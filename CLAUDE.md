# CLAUDE.md

Guidance for Claude Code when working in this repository.

## Overview

This repository holds the **academic outreach effort** for the PuffSat pulsed-propulsion
architecture. It is not the paper. The paper lives in
`katzseth22202/Balloon-Pulse-Propulsion` (Zenodo DOI 10.5281/zenodo.16741183), with
calculations in `katzseth22202/aim_is_all_you_need` (DOI 10.5281/zenodo.16718455).

The deliverables here are short **sanity-check briefs**, each addressed to one named expert,
each carrying one falsifiable number and one bounded question. The author is unaffiliated and
resource-constrained, so the briefs are optimized for reply rate, not for completeness.

`Balloon-Pulse-Propulsion` is a sprawling exploration. Its bibliography runs to 488 entries and
its scope covers the whole architecture. This repository is the opposite shape. Everything here
is meant to be tight enough to motivate a researcher to look, and it is a summary of the
data-center case rather than a source of new claims. Almost nothing here should be a fact the
parent does not already carry.

Read `CONTEXT.md` before writing or editing any brief. It is the settled glossary and it
records decisions that are easy to reverse by accident.

## Files

- `CONTEXT.md` - the domain glossary. Terms defined in the parent repo's `CONTEXT.md`
  (PuffSat, pusher plate, fudge factor `f`, jet efficiency, recovery `e`, Earth-customer
  latency) are inherited and are not redefined here.
- `docs/brief_guide.md` - what each brief should contain, in what order.
- `briefs/` - the briefs themselves, one file per recipient.
- `homework/` - the calculations and literature notes that must precede each brief.
- `correspondence/` - gitignored. Never commit a reply, an address, or a name a recipient
  has not published.

## Standing rules for this repo

**Homework first.** No brief may ask a recipient to spend the first hour. Any question
answerable from a public archive, dataset, or solicitation is answered before the brief is
sent, and the brief asks the expert to correct that work rather than to originate it. Homework
depth matches what the recipient cannot tell you, so it is not uniform across briefs.

**Every number is a requirement, not a result,** unless a simulation or a citation backs it.
The parent glossary is scrupulous about this and the briefs must not be looser. `f = 0.8` is
plausible and unconfirmed. The `eta_jet` values are requirements. Recovery `e` on the outbound
leg cannot be measured without flying.

**Provenance goes after the claim, never before it.** The briefs disclose that the
architecture came out of an AI-assisted design dialogue which began as science-fiction
worldbuilding. Placed before the technical content, that reads as a request for lowered
standards. Placed after, it reads as calibration. Never characterize the work as "crazy" and
never stack credibility discounts.

**Citations come from the parent bibliography.** When a claim here needs a source, look first
in `references.bib` in `katzseth22202/Balloon-Pulse-Propulsion` and copy the entry across
unchanged, key and `note` field included. That file already covers most of what this repository
argues. Fetch the current copy with:

    curl -sO https://raw.githubusercontent.com/katzseth22202/Balloon-Pulse-Propulsion/main/references.bib

Search it by author, title, and URL, never by a guessed key. The parent's keys are descriptive
rather than name-and-year (`nasa_odqn2007_fengyun`, `kan2007_asat`), so a key invented here will
miss an entry that exists and then quietly duplicate it. Write a new entry only after that
search comes back empty. If the parent's entry is thin or wrong, correct it in the parent and
copy the corrected version down, rather than keeping a better local variant.

The reason is that this document adds no information the parent lacks. The same fact cited
through two different entries makes a reader stop and check whether the two documents are
claiming the same thing, which is the opposite of what a tight summary is for.

The AI use disclosure is the exception. It reports which tools were used on *this* document, so
its entries are a local fact and are written here when the tool is not already in the parent
bibliography. Copy the entry down if the parent has one (it carries `grok`, `claude_code`, and
`chatgpt`), and write a new one otherwise. Cite AI tools as software, by vendor, with an access
date rather than a version.

**No priority or licensing language in a brief.** The architecture is already deposited with a
DOI, which is the protection that functions. Mentioning it to a recipient signals distrust and
costs credibility. The proprietary LICENSE governs this repository, not the tone of the
correspondence.

**Every brief closes with a referral request.** It is near-costless for the recipient, it
converts a "not my area" non-reply into a useful reply, and a forwarded introduction is worth
more than any attachment.

**Scratch files go in `todos/`,** which is gitignored. Never write working documents to the
repo root.

## Writing Style

This stylebook is inherited from the parent repo's `CLAUDE.md`; consult that file for the full
text and rationale. The blocklist below is the enforceable part. The principle is to prefer
the plainer word and the shorter sentence. It matters more here than anywhere else in the
project, because the briefs exist to be distinguished from unsolicited AI-generated physics.

- **No em-dashes.** Split the thought into sentences, or use a comma, semicolon, or
  parentheses. En-dashes are fine for compound modifiers and number ranges.
- **No colon welding two independent clauses.** Colons stay fine before a delivered item: a
  list, a quote, an equation, a table.
- **Banned vocabulary.** delve, navigate the landscape, tapestry, crucial, pivotal,
  furthermore, moreover, in conclusion, it is important to note, it is worth noting, keep in
  mind, leverage (as a verb), robust, seamless, underscore, underpin, commendable, meticulous,
  realm, in light of, a myriad of, a host of, a wealth of, a testament to, stands as, serves
  as, at the heart of, at its core, in essence, essentially, transformative, groundbreaking,
  revolutionary, game-changer, showcase, highlight (as a verb), aim to, seek to, strive to.
- **Banned padding adverbs.** remarkably, incredibly, profoundly, vastly, fundamentally,
  ultimately, arguably. Cut them, or give a number.
- **No sentence-initial throat-clearing.** Indeed, Notably, Interestingly, Importantly,
  Additionally, Subsequently, Consequently.
- **No "not only X but also Y", "X is more than just Y", "This isn't just X, it's Y".**
- **No rule-of-three lists.** Use two, or four, or whatever the content calls for.
- **No hollow openers and no recap closers.** Stop when the argument stops.
- **No "from X to Y" range-gesturing** without endpoints.
- **No passive throat-clearing.** "It can be observed that", "It has been shown that".
- **Quantify, do not hedge.** significant, substantial, a wide range of, various, a number
  of, potentially are placeholders for missing numbers.
- **Gloss jargon at first use** with a short appositive, not a paragraph later.
- **Keep sentences short.** Split anything past about 30 words or two subordinate clauses.

**Direct quotations are exempt.** Never edit a quoted passage attributed to a person to
satisfy this stylebook.

## License

All Rights Reserved. See LICENSE.
