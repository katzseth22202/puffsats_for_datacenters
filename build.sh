#!/usr/bin/env bash
# Build templateArxiv.pdf — the space data centers companion document.
# Usage:
#   ./build.sh            build the document
#   ./build.sh --clean    remove aux files first, then build
#   ./build.sh --quiet    suppress pdflatex chatter (errors still surface)
#   ./build.sh --open     open the PDF in the default viewer when done

set -euo pipefail

cd "$(dirname "$0")"

JOB="templateArxiv"
CLEAN=0
QUIET=0
OPEN=0

for arg in "$@"; do
    case "$arg" in
        --clean) CLEAN=1 ;;
        --quiet) QUIET=1 ;;
        --open)  OPEN=1 ;;
        -h|--help)
            sed -n '2,7p' "$0"
            exit 0
            ;;
        *)
            echo "Unknown option: $arg" >&2
            exit 2
            ;;
    esac
done

for tool in pdflatex biber; do
    if ! command -v "$tool" >/dev/null 2>&1; then
        echo "Error: '$tool' not found in PATH. Install TeX Live (or MacTeX)." >&2
        exit 1
    fi
done

if [[ $CLEAN -eq 1 ]]; then
    echo "==> Cleaning aux files"
    rm -f "$JOB".{aux,bbl,bcf,blg,log,out,run.xml,toc,pdf}
fi

run() {
    local label="$1"; shift
    echo "==> $label"
    if [[ $QUIET -eq 1 ]]; then
        "$@" -interaction=nonstopmode -halt-on-error "$JOB" >/dev/null
    else
        "$@" -interaction=nonstopmode -halt-on-error "$JOB"
    fi
}

# pdflatex doesn't take the .tex extension when -interaction is used this way,
# but biber takes the jobname. Pass the jobname to both.
run "pdflatex (pass 1/3)" pdflatex

# A nonzero biber exit means a real bibliography problem, so it stops the build.
# Under --quiet the output is kept and shown only on failure.
echo "==> biber"
biber_status=0
if [[ $QUIET -eq 1 ]]; then
    biber_log=$(biber "$JOB" 2>&1) || biber_status=$?
    [[ $biber_status -ne 0 ]] && echo "$biber_log" >&2
else
    biber "$JOB" || biber_status=$?
fi
if [[ $biber_status -ne 0 ]]; then
    echo "Error: biber exited $biber_status. See $JOB.blg." >&2
    exit "$biber_status"
fi

run "pdflatex (pass 2/3)" pdflatex
run "pdflatex (pass 3/3)" pdflatex

echo
echo "Built: $(pwd)/$JOB.pdf"

if [[ $OPEN -eq 1 ]]; then
    if command -v open >/dev/null 2>&1; then
        open "$JOB.pdf"
    elif command -v xdg-open >/dev/null 2>&1; then
        xdg-open "$JOB.pdf" >/dev/null 2>&1 &
    else
        echo "Warning: no 'open' or 'xdg-open' found; cannot open PDF automatically." >&2
    fi
fi
