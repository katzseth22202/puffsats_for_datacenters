# Brief Guide

What each outreach brief should contain, in what order, and what must stay out. This is a
guide, not a draft. Read `CONTEXT.md` first; it holds the settled vocabulary and the decisions
this guide assumes.

## What a brief is

One page. One number you can defend without a model in front of you. One question the
recipient can answer in a paragraph. Addressed to one named person.

The test to apply before sending: **if someone replies "where does that number come from?",
can you answer cold?** Anything in the brief that fails that test gets cut. This will shorten
the brief, which it needs.

## Delivery

Plain-text email body carrying the **complete** ask, with a one-page PDF attached as optional
depth. If the recipient never opens the attachment, the email must still work. Attachments are
friction, not danger; a plain PDF is fine, while archives, Office files, and Dropbox links get
deleted unread.

The PDF is plain single-column with generous margins so it reads as a technical memo. Do not
use the PRIME or arXiv paper template. A one-pager dressed as a paper invites paper-grade
scrutiny and inherits the visual identity of the speculative white paper. The objection is to
the paper costume, not to the column count; `PRIMEarxiv.sty` is itself single-column.

Send plain text, not HTML with inline images. Never attach `.tex` source.

### The companion proposal does not travel with these briefs

`templateArxiv.tex` at the repository root is a separate document in the parent paper's arXiv
format, carrying the orbital-data-center demand story at length. It goes to recipients who can
judge demand and siting. It is not attached to a physics brief, and its styling is not a precedent
for what those briefs attach. The R10 cost brief is the exception, sent with it. See **Companion proposal** in `CONTEXT.md`.

The two prohibitions below, on data centers and on the paper template, are scoped to the
briefs. They are not repealed by the existence of the companion.

## Shared skeleton, in order

**1. Subject line.** Specific, and it names their work. "Applying your plume efficiency result
outside its stated regime" beats anything with "propulsion concept" in it.

**2. The question, in the first two sentences.** No self-introduction, no preamble, no
apology. A number, its provenance, and what you want to know about it. This paragraph is what
preempts the "is this AI slop" filter, because slop does not open with a citable number and an
error bar.

**3. The homework.** What you already did, and the number it produced. This is what converts
you from petitioner to correspondent. It also gives them something to correct, which is a much
easier reply to write than an assessment.

**4. Why this person.** Cite their result or their facility by name. Say which of their stated
scope conditions your case violates. You are asking about the limits of their own work, which
is a question their paper invites.

**5. Provenance and epistemic status, two or three sentences.** The architecture came out of an
AI-assisted design dialogue that began as science-fiction worldbuilding, and a near-term
application emerged from it. Nobody independent has checked it, which is why you are writing.
State the method plainly and own the interesting part. Do not stack discounts, do not say "I am
not an expert", and never write "crazy".

This paragraph goes **after** the technical content. Before the claim it reads as a request for
lowered standards. After it, as calibration.

**6. The referral request, as the closing line.** "If this sits with someone else, who should I
be writing to?" Near-costless for them, and it turns a "not my area" non-reply into a useful
one. A forwarded introduction from inside their institution is worth more than any attachment.

## Where briefs come from

Each brief is drawn from one risk in `homework/risk_register.md`, and carries that risk's
deciding number and cheapest test. The register is the homework. A brief asks the recipient
to correct one entry, not to read the register.

The order is set by what a funder needs to see answered first.

1. **R4, plate face under repeated shock.** First. The skirt and its sliding seal ride in it
   as one sentence, not a brief of their own.
2. **R7, terminal guidance.** Second, and only after the Monte Carlo error budget exists.
3. **R10, launch price.** Last, to a launch-cost analyst, sent with the companion proposal.

R1, the chamber wall, has no place in the order yet. The parent's bench ladder makes a brief
possible, since its first rungs fit an existing rig, but whether it goes before or after R7
is not decided.

## Brief R4: the plate face. Send first.

**To:** a shock-compression group that has published repeated-shock, spall or HEL work on
high-strength steel. Not yet chosen. Choosing them is homework, and the brief names their
result.

**The question.** The spray cup's maraging 300 floor takes 0.9 to 2.5 GPa for 1 to 30 µs, about
1060 to 1500 times a push, against a 2.5 GPa allowable. The only measured HEL is maraging
350's, 4.8 GPa give or take 2.0. Ask whether damage builds up over a thousand microsecond shocks
below the single-shock HEL, and whether their data or rig can say.

**The homework to carry.**

- The merge argument. The merged pulse rises over about 36 µs, slower than the 10.6 µs round
  trip through the 30 mm floor, so the floor never goes into tension. Ask them to correct it.
- The failure case, owned. An unmerged pulse rises in half a microsecond and the companion
  finds it cracks the floor within 0 to 1053 pulses. Say that a failed merge is caught and the
  push stopped within a few pulses, and that this is a requirement.
- The hydrogen barrier, as the second question if the first gets a reply. A sub-micron alumina
  film under the pitch, tested elsewhere against gas but not against pulsed atomic hydrogen.
- One sentence on the skirt. It is fixed to the vehicle so it never takes the floor's kick,
  which would launch a 1 to 3 GPa wave into a bolted joint every pulse. The price is a sliding
  seal.

**One figure, optional.** The parent's `plate_stack` section with its face inset, if the
attachment is sent. The question does not need it.

**Budget.** Under 300 words in the body.

## Retired briefs

**Brief A, magnetic nozzle (Ahedo and Merino, UC3M).** Retired. The paper now departs on a
walled chamber and calls the magnetic nozzle far from maturity, so the plume-efficiency
question no longer carries the case. R1 is the lever it aimed at.

**Brief B, spray cushion (Langendorf and colleagues, LANL PLX).** Retired as a gate. The
mean-free-path check in `todos/mfp_companion_request.md` should settle whether the flows shock,
and our own estimate (R3) says they do by four or more orders of magnitude. PLX stays the
referral if an experiment is wanted. Three pieces of its homework remain useful wherever the
plate's efficiency is defended: the meteor bound on radiative loss, the contamination clause
(mass dilution is not radiative dilution), and the answer to the opposing-jet objection.

## Checklist before any brief goes out

- Every number quoted from `homework/risk_register.md`, and defensible cold, without a model.
- Every number phrased as a requirement, unless a citation or a simulation backs it.
- Provenance paragraph after the technical content, not before.
- Referral request as the closing line.
- Body self-contained, so the attachment is optional.
- No em-dashes, per the stylebook in `CLAUDE.md`.

## What must not appear in a physics brief

The R10 cost brief travels with the companion proposal, so the first two items below do not
apply to it.

- The Jupiter growth multiples, the compounding table, or Mass Interest. They read as
  speculative finance and will sink a physics email.
- Data centers. The demand story belongs in the sun-synchronous piece and in the companion
  proposal, not here. The chain can start today but reaches data-center scale only around
  2055, and a propulsion brief has no room to draw that distinction.
- Any mention of priority, licensing, or Zenodo deposit as protection.
- The words "crazy" or "not an expert".
- A link to the `Balloon-Pulse-Propulsion` repository. Cite the Zenodo DOI instead. The
  LaTeX-assets repo is build infrastructure and reads as unfinished.
- An open-ended request for an assessment, an endorsement, or an opinion on whether the idea
  is interesting. The endorsement ask is a second email, after they engage.
