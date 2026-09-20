# PuffSats For Data Centers

Canonical language for the academic-outreach effort: the short briefs that ask named experts
to sanity-check one claim from the *Aim Is All You Need* architecture. Orbital data centers
supply the demand story; the Jupiter-only growth chain supplies the supply story. Each brief
addresses the leg its recipient can speak to, and they need not share a regime.

Terms defined in the parent project's `CONTEXT.md` (PuffSat, pusher plate, fudge factor `f`,
jet efficiency, recovery `e`, Earth-customer latency, intra-cluster latency) are inherited
unchanged and are not redefined here.

## Language

**Sanity-check brief**:
A one-page document addressed to one named expert, carrying one falsifiable claim and one
bounded question about it. Its job is to earn a reply, not to explain the architecture.
_Avoid_: "explainer", "overview", "white paper" (all three name documents that give the
reader nothing to do).

**Bounded ask**:
A request a recipient can discharge completely in a few sentences, with a visible exit
condition. An arXiv endorsement request is bounded; "is this interesting?" is not, which is
why the latter is never the stated ask even when it is the real motive.
_Avoid_: treating "please review my paper" as bounded.

**Companion proposal** (settled 2026-09-18):
The standalone document at the repository root, `templateArxiv.tex`, built in the parent
paper's arXiv format and carrying the orbital-data-center demand story at length. Its
recipients are the people who can judge demand and siting, not propulsion physicists, and it
is the one place in this repository where the data-center case is argued rather than assumed.
It does not travel with Brief A or Brief B. Those keep their plain one-page memo attachment.
_Avoid_: attaching it to a physics brief (the Jupiter chain's payoff runs to 2055, so
"near-term application" is not a claim a propulsion brief can carry); calling it a brief, since
it carries no bounded ask and is not addressed to one named person; treating its arXiv styling
as a precedent for brief attachments.

**Inherited citation** (settled 2026-09-20):
A bibliography entry copied down from `references.bib` in `katzseth22202/Balloon-Pulse-Propulsion`
with its key and its `note` field intact, rather than written fresh here. The parent is a
sprawling exploration and its 488 entries already source most of what this repository argues.
This repository is a tight summary of the data-center case, so a source it needs is almost always
a source the parent has. Two entries for one fact make a reader stop and check whether the two
documents claim the same thing. The AI use disclosure is the exception, since it reports which
tools were used on this document and that is a local fact.
_Avoid_: searching the parent by a guessed key, since its keys are descriptive rather than
name-and-year (`nasa_odqn2007_fengyun`, `kan2007_asat`) and a near miss silently duplicates;
keeping a corrected local variant of a parent entry instead of correcting the parent and copying
it down.

**Homework-first principle** (settled 2026-09-18):
No brief may ask a recipient to spend the first hour. Any question answerable from a public
archive, solicitation, or dataset is answered before the brief is sent, and the brief asks
the expert to *correct* that work rather than to originate it.
_Avoid_: sending a feasibility question whose answer sits in a public archive.

**Provenance disclosure**:
The brief's honest account of where the architecture came from: an AI-assisted design
dialogue that began as science-fiction worldbuilding, out of which a near-term application
emerged. A statement of method and epistemic status, placed after the technical claim.
_Avoid_: stacking credibility discounts ("not an expert", "AI did it", "originally
fiction", "this is crazy") ahead of the claim; self-characterization as "crazy" or
"speculative" where a neutral description of the open frontier would do the same work
without inviting dismissal.

**Siting latency ladder**:
The ranking of candidate data-center sites by Earth-customer round-trip light time:
Earth-Moon L4/L5 at 2.6 s, Sun-Earth L1/L2 at 10 s, Sun-Earth L4/L5 at ~16.6 min. The
first two clear every batch and long-horizon agentic workload; the third does not.
_Avoid_: unqualified "L4/L5" (the Earth-Moon and Sun-Earth cases differ by ~400x in light
time); citing intra-cluster latency figures against an Earth-customer budget.

**Distance buys engagement time** (renamed 2026-09-19 from "Distance is not defense"):
Distance from Earth buys interceptor transit time, adversary delta-v cost, and loss of
deniability. Transit time is the load-bearing one, because an active response needs a window
to act in. A direct-ascent ASAT reaches sun-synchronous orbit in minutes and leaves none:
China destroyed FY-1C at 865 km in January 2007 with an SC-19, a modified DF-21. A transfer
to an Earth-Moon Lagrange point takes days, which is enough to disperse a cluster or to
engage the inbound vehicle. Distance does not hide the asset, and a published halo orbit is
as predictable as a sun-synchronous one.
_Avoid_: claiming survivability from distance alone, when the claim is that distance converts
a no-notice strike into an engageable one; conflating the two precedents, since Iran's March
2026 Shahed strikes on Gulf data centers were drones against buildings and FY-1C was a kill
vehicle against a satellite. The first establishes intent, the second establishes reach.

**Cycle autonomy** (the Jupiter chain's load-bearing claim, settled 2026-09-18):
That once the growth cycle is seeded, delivering mass requires **no orbital-class reusable
rocket**. This, not cost per kilogram, is why the Jupiter scenario leads the outreach: the
LEO scenario must beat the marginal cost of flying the payload inside the Starship that
launched its PuffSats, a comparison it loses except for the suborbital push of
`sec:200_mile_high`. Conceding the LEO case is an asset, not a weakness.
_Avoid_: defending the Jupiter chain on $/kg against chemical launch; presenting cycle
autonomy as demonstrated rather than as the consequence of growth rates that depend on
unvalidated `e` and `f`.

**Spray leverage** (the EAST brief's subject):
The gain from spraying carried material from the target rocket's plate into an arriving
PuffSat plume, so a given incoming mass delivers more mass to orbit. It needs a closing
speed high enough to pay for the sprayed mass, which the Jupiter overtake leg's ~50 km/s
supplies and the LEO band's 3.2-16 km/s does not, where the incoming mass is simply used
directly. The parent glossary's **water-injected pusher plate** is the device.
_Avoid_: quoting a delivery multiple or a slug ratio `k` as a simulated result; applying
spray leverage to the LEO insertion case.

**Chemical recouping**:
Whether energy stored in dissociation at the hot, dense point of collision is returned to
directed flow as the gas expands and cools, rather than stranded as **frozen-flow loss**.
Favoured by high density at cooling, because recombination is three-body and its rate scales
far more steeply with density than the expansion rate does. The open question that selects
the sprayed composition: water recoups if it recouples and is dead weight if it does not,
while a monatomic gas such as argon has no dissociation modes to recoup and pays ionization
instead.
_Avoid_: treating the composition choice as settled in either direction; assuming a shock
tube measures recouping directly (it measures compression-side relaxation, and reaches the
expansion question only through the rate model that detailed balance ties to it).

**Dirty impactor**:
The unavoidable trace material an arriving PuffSat carries into the collision beyond its
intended gas, such as ablated plastics and structural metals. Its **mass** fraction falls as
the slug ratio `k` rises; its **radiative** contribution does not, because trace species with
strong transitions can dominate emission. Water's oxygen plus plastic carbon makes CO, a
severe vacuum-ultraviolet radiator, and metal resonance lines matter at parts per million.
_Avoid_: inferring a small radiative contribution from a small mass fraction; calling
contamination a second-order effect in a budget whose loss term is radiation.

**Spray cushion**:
The gas-gas interaction region formed when an arriving PuffSat plume collides with material
sprayed forward from the target rocket, ahead of and separate from the plume's later arrival
at the plate. Collision speeds run 45-68 km/s. Its existence is conditional: the streams must
be collisional enough at their density to form a shock rather than interpenetrate, and if they
interpenetrate there is no cushion and no **spray leverage**.
Prior art sits in two communities, neither of them entry aerothermodynamics. Merging-plasma-jet
work (LANL PLX, HyperV railguns) has collided argon jets at 50 km/s and measured shock
formation between them at ion temperatures to 30 eV. Hypersonic **opposing-jet** work has the
same spray-forward geometry but uses it to *reduce* wall loading, and does so successfully,
which is the standing objection this architecture must answer on momentum-conservation grounds.
_Avoid_: calling the physics unstudied; assuming a cushion forms without checking the mean
free path against the interaction length; citing opposing-jet drag reduction as support rather
than as the objection it is.

**Defunct-programme door**:
A cancelled research programme approached as an outreach target, on the grounds that nobody
gatekeeps it, its veterans hold no competitive stake, and they carry the unpublished knowledge
of what was and was not closing when funding stopped. **Project 242** (Rubbia's fission-fragment
direct heating, ASI-funded 1999-2002, synthesis published in Acta Astronautica a decade later)
is the case in point for the high-temperature exhaust question, alongside the still-active
gas-core and nuclear-lightbulb lineage, whose transpiration-cooled throat is the established
ancestor of spraying gas to keep hot flow off a wall.
_Avoid_: asking a cancelled programme "why did it stop" when the record says politics (ask
instead whether the physics was closing); borrowing the nuclear heating mechanism along with
the nozzle problem, when only the latter transfers.

**Cited-author door**:
The outreach target found in one's own bibliography: an author whose published number the
architecture already leans on, approached with a precise question about that number's scope
conditions. The warmest available cold contact, because the question the paper's own stated
limits invite is not an imposition, and citing a result accurately before questioning its
range is a signal no slop reproduces. Ahedo and Merino at UC3M are the case in point, anchoring
the `η_jet` ceiling with a plume efficiency measured under collisionless, electron-magnetized,
current-free, low-beta conditions this architecture does not meet.
_Avoid_: seeking an introduction to someone already in the reference list; asking whether a
cited result is correct rather than whether it has been applied within its scope.

**Natural-experiment substitute**:
An observed phenomenon standing in for a facility that cannot reach the regime. Meteor entry
at 11-72 km/s covers the whole 45-68 km/s collision band and has metal-line-dominated shock
emission already characterized, which is why meteor spectroscopy, not entry aerothermodynamics,
owns the radiation and contamination questions here. Reported emission spectra are close to
independent of entry speed, which if it carries would make the 45-68 km/s spread minor for
radiation character.
_Avoid_: treating a facility ceiling as the limit of available evidence; assuming the
speed-independence result transfers without asking whether it does.

**Terminal miss vs formation dispersion**:
Two distinct failure modes that both end in lost momentum, routinely conflated.
**Terminal miss** is one PuffSat's impact point departing from its aim point on the plate, the
quantity the `v^2` homing-miss floor bounds and the parent glossary's **deterministic-coast
correction** addresses. **Formation dispersion** is the cloud failing to hold its designed shape
relative to itself, the quantity ADR-0028's shape study bounds. A rigid formation can arrive
collectively off-center and a dispersed one can arrive centroid-true.
They couple in one direction: terminal miss lowers the capture fraction, which raises **sideways
spill** past the plate edge, which drives `f` toward and below 0.5.
The architecture's answer to terminal miss is a **navigation** claim, not a guidance one, since
it nulls a pre-measured offset rather than homing. That is what makes a relative-navigation lab
the right recipient, and it makes the question "how well must the relative state be known at
correction time" rather than "can it be hit".
_Avoid_: treating the shape box of ADR-0028 as a bound on terminal miss; citing the S = 0.26
shape sensitivity as if the mapping from dispersion to arriving shape were established, when
the cloud-schedule study that would establish it is deferred.

**Systematic vs random phasing error**:
The distinction that decides whether the patched-conic arcs need replacing. Random per-cycle
error washes out across the chain; a systematic per-cycle phase bias compounds over the 11
flown cycles, and the 2S/3S cadence, fly-and-park and the 0.726 sweet phase all depend on the
loop returning to its own departure phase. Jupiter's sphere of influence spans roughly 0.3 AU,
so the arcs spend a long time where patched conics neglects solar gravity. Settled by
re-propagating one full cycle in n-body (GMAT, SPICE ephemerides) and testing whether the
residual's sign repeats, which is self-serviceable and precedes any outreach on the question.
_Avoid_: asking whether patched conics is "valid" (it is a known approximation with known error
scaling); validating a single cycle and inferring the chain.

**Gatekeeper-free claim**:
A finding the architecture's viability does not condition, publishable without endorsement or
affiliation. The indefensibility of sun-synchronous orbit for a data center is the case in
point: it rests on the 2026 Gulf precedent, checkable orbital mechanics, and predictability,
and needs no propulsion result at all. Its value is as a credential rather than as evidence,
since publishing it makes the author a published voice on orbital data-center security before
any physics has been validated.
_Avoid_: conditioning it on the rest of the architecture; treating it as support for the
propulsion case rather than as an independent argument that happens to motivate cheap mass.

**Momentum coupling coefficient (`Cm`)**:
Target momentum produced per unit incident pulse energy, measured in vacuum by ballistic
pendulum in the laser-ablation propulsion literature and running 0.01-0.1 mN-s/J for
surface-absorbing materials. Structurally the same kind of quantity as the **fudge factor**
`f` and the nearest existing empirical analogue to it, which makes that community the
best-matched door for plate survivability and coupling, and its bench-scale method the
cheapest route to any relevant measurement.
_Avoid_: equating `Cm` with `f` (laser ablation supplies its own reaction mass from the target,
while a PuffSat pulse arrives carrying mass and momentum already); borrowing its numbers rather
than its methodology.

**Luminous efficiency**:
The meteor-physics quantity that is this architecture's radiative escape fraction under another
name: the fraction of kinetic energy released as radiation. Published values run 0.5-6% for
10^-8 to 10^-5 kg meteoroids and 0.6-8% for 2.4-87 kg bodies, with the visible band carrying
only 30-50% of the total, so panchromatic figures understate total loss by 2-3x. Commonly
modeled velocity-dependent as tau = tau_0 * v, placing the 45-68 km/s band at the unfavourable
end. Order 1-10% overall, which if it transfers demotes radiation below frozen flow and
**sideways spill** as a loss channel, and it is established from published work without
correspondence.
_Avoid_: banking it without the transfer caveats (meteors ablate a solid into gas, radiate from
an unconfined optically thin volume, and the literature disagrees across models); quoting a
visible-band figure as a total; treating it as a measured value for a gas-gas collision in
vacuum rather than as a bound worth testing.

**Gating order**:
The rule that a brief whose premise another brief establishes waits for it. The spray-cushion
question gates the plate-coupling question in both directions that matter: physically, because
interpenetrating streams leave no merged flow for a plate to couple, and practically, because
a coupling question cannot state its input condition until the cushion's state is known.
_Avoid_: sending gated briefs in parallel to save time; asking a coupling question with an
unspecified arriving flow, which is unanswerable and reads as vague.
