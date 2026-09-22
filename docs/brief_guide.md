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
judge demand and siting. It is not attached to Brief A or Brief B, and its styling is not a
precedent for what those briefs attach. See **Companion proposal** in `CONTEXT.md`.

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

## Brief A: magnetic nozzle efficiency. Send first.

**To:** Eduardo Ahedo and Mario Merino, Universidad Carlos III de Madrid.

**Why first:** the homework is already written, in your own glossary. This brief costs an
afternoon and carries the lowest risk of being mistaken for slop, because you cite their result
accurately before questioning its range. They are already in your bibliography, so you need no
introduction.

**The question.** Your architecture requires `eta_jet` near 0.77 for the lunar cycle, near
0.89 for the methalox rebuttal at its pessimistic anchor, and near 0.7 for the scale energy
case. None is computed from a nozzle model. All are requirements. Their plume efficiency of
0.63 to 0.83 is power-like, so its square root bounds `eta_jet`, giving a divergence-only
ceiling near 0.79 to 0.91. Ask whether 0.77 sits defensibly under that ceiling.

**The scope mismatch, which you supply yourself.** Their model is collisionless,
electron-magnetized, current-free and low-beta. Your pulse is collisional. You wrote that
caveat in your own glossary, so state it and ask the two questions it raises. Has the analysis
been extended to a collisional pulse? If not, is the correction direction known even
qualitatively?

**Also worth one sentence.** You distinguish Nakashima's plume efficiency from Schilling's
`eta_th`, and note that only the latter is the same quantity as your `eta_jet`. That
distinction is real literature reading and it will register.

**No figure.** The question concerns a scalar's scope conditions. A diagram would be padding.

**Budget.** Under 300 words in the body. The attachment can be half a page or omitted.

## Brief B: does the spray cushion form. Send the same week.

**To:** S. Langendorf and colleagues, Plasma Liner Experiment, Los Alamos National Laboratory.
HyperJet Fusion Corporation is the commercial side. Check Scott Hsu's current affiliation
before writing to him; he moved into energy-policy roles and is a referral source rather than a
bench collaborator.

**Why them:** they have collided argon jets at 50 km/s, inside your 45 to 68 km/s band, and
measured shock formation between them at ion temperatures up to 30 eV. LANL publicly solicited
commercialization partners for PLX in September 2025, so the programme is in a receptive
posture.

**The question.** At your post-collision state, do two counter-streaming flows shock, or do
they interpenetrate? If they interpenetrate there is no cushion, no spray leverage, and the
plate question does not arise. This is the concept's gate, which is why this brief goes early.

**Lead with the state, not the velocity.** Their archive and their intuition are indexed by
temperature, density and composition. Give those and derive the closing speed from them. Doing
it the other way round invites the correct objection that a 46 km/s facility ceiling does not
cover 68 km/s, when the ceiling may not bind you at all.

**Homework to carry, three items.**

- Mean free path at your post-collision density against the interaction length, benchmarked
  against their measured shock formation. One back-of-envelope calculation with a published
  reference point.
- Radiative loss already bounded from meteor luminous efficiency: 0.5 to 6 percent of kinetic
  energy for small meteoroids, 0.6 to 8 percent for 2.4 to 87 kg bodies, with the visible band
  carrying only 30 to 50 percent of the total. Order 1 to 10 percent overall. State the
  transfer caveats, since meteors ablate a solid into gas and radiate from an unconfined
  optically thin volume. Use it to say you are treating radiation as secondary, which is why
  you are asking about shock formation instead.
- The composition question, presented as a choice rather than an open request. Water recoups
  its dissociation energy if recombination outruns expansion, which high density at cooling
  favours because recombination is three-body. Argon has no dissociation modes and pays
  ionization instead. Ask which they have better data for at your state.

**The contamination revision, owned in one clause.** You assumed a high slug ratio `k` diluted
trace material and you no longer think it does, because mass dilution is not radiative
dilution. Water's oxygen plus plastic carbon makes CO, a severe vacuum-ultraviolet radiator,
and metal resonance lines matter at parts per million. Meteor spectra confirm it: emission is
led by metal lines, not by the ablation layer.

That single clause is the most anti-slop sentence available to you. It demonstrates knowing
which of your own beliefs moved and why, which is the property slop structurally lacks.

**Preempt the opposing-jet objection.** Hypersonics sprays gas forward from a stagnation point
to reduce wall loading, reporting up to 77 percent peak heat-flux reduction and 30 to 45
percent drag reduction. A reviewer will raise it in one line. Your answer is that those cases
face an unlimited free stream and want the shock pushed away, while your incoming plume is
finite and you want all of its momentum plus the sprayed mass in the exhaust, where for fixed
energy `p = sqrt(2mE)` rewards the heavier, slower merged flow. Put the answer in the
document.

**One figure, a labeled line diagram.** Two counter-streaming flows, the interaction region,
the plate downstream, velocity vectors, and a length scale. Not a rendering. The existing repo
images were made for worldbuilding and illustration-style art reads as concept art to a plasma
physicist.

**Budget.** Under 400 words in the body, one page attached.

## Checklist before either brief goes out

- Every number defensible cold, without a model.
- Every number phrased as a requirement, unless a citation or a simulation backs it.
- Provenance paragraph after the technical content, not before.
- Referral request as the closing line.
- Body self-contained, so the attachment is optional.
- No em-dashes, per the stylebook in `CLAUDE.md`.

## What must not appear in either brief

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
