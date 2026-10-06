# Risk Register

What would make the PuffSat growth cycle fail, ranked by how far each item moves the
paper's conclusion. Every number is quoted from `templateArxiv.tex`, which copies it from the
parent (Zenodo DOI 10.5281/zenodo.16741183). The one exception is the mean-free-path estimate
under R3, which is marked as ours and waits on the companion simulation to confirm it.

The register shows a reviewer or a funder which failure modes the author has already found.
Each entry gives the deciding number, its margin, what breaks if the number is wrong, the
cheapest test that would settle it, and who could check it. The briefs in `briefs/` are drawn
from it, one risk per brief.

## The constraint behind every test

The full collision cannot be tested on the ground. Seventy kilograms at 70 km/s carries
171 GJ, an ordinary energy for a test, but no launcher reaches the speed (`sec:fleet_stake`).
A flight cycle takes 2.18 to 3.28 years and returns one measurement. So each risk has to be
split until part of it fits a coupon, a code, or an existing facility. Those parts are what a
first grant can buy.

## Summary

| #   | Risk                                   | Deciding number                              | Margin                                      | Cheapest test                                  | Status                       |
| --- | -------------------------------------- | -------------------------------------------- | ------------------------------------------- | ---------------------------------------------- | ---------------------------- |
| R1  | Departure chamber efficiency and wall  | H2 0.858, CH4 0.538 (88%, 80% of ceiling)    | At 50% of ceiling, H2 doubles slower than methalox | Independent chamber hydrocode; pulsed-heat coupons | Open, no brief          |
| R2  | Plate jet efficiency                   | `eta_jet` 0.60, downside 0.57                | Open flat plate gives 0.33 to 0.40          | Independent hydrocode of the spray cup         | Open, single code            |
| R3  | Spray and pulse shock, not pass through | Mean free path against a ~4 m cloud         | Our estimate is 4 or more orders of magnitude | Companion computes Kn for the arriving gas   | Likely closed, request upstream |
| R4  | Plate face under repeated shock        | 0.9 to 2.5 GPa peak, 2.5 GPa allowable       | None at the top of the range                | Repeated-shock coupons, maraging 300/350       | Open, first brief            |
| R5  | Pitch film and its vapor shield        | 4 to 6 kg a pulse, 28 to 33 without shield   | Factor of 6 rests on the shield             | Pulsed plasma or arc jet on coated steel       | Open                         |
| R6  | Recombination while gas presses        | Water returns 23 to 31% of bond energy by 250 µs | Argon is an equilibrium argument only   | Finite-rate chemistry in the R2 hydrocode      | Open, inside R2              |
| R7  | Terminal guidance                      | 0.5 m footprint offset; 2 cm rod clearance   | Not simulated                               | Monte Carlo error budget, release to impact    | Open, second brief           |
| R8  | Skirt sliding seal                     | 14 to 140 MJ a pulse leaks, 1 to 10 mm gap   | Not stated as a share of the pulse          | Inside R2, then a seal bench test              | Open, fold into R4 brief     |
| R9  | PuffSat coast and approach             | 1 sphere in 170 punctured per 16-day coast   | Sized into the reserve                      | Hypervelocity impact on the Echo II laminate   | Open, low                    |
| R10 | Launch price                           | Lob at $26.6 per kg lofted                   | About three fifths of $122/kg               | Launch-cost analyst review                     | Open, after R1 to R4         |
| R11 | Safety and dual use                    | None in the paper                            | Not addressed                               | A written answer, not a test                   | Open, unanswered             |

## R1. Departure chamber efficiency and wall survival

**Number.** The simulated chambers reach 0.858 for hydrogen and 0.538 for methane, 88% and
80% of their chemistry ceilings of 0.978 and 0.669 (`sec:exponential_mass_growth`). Both are
modeled by one code. The paper calls every chamber efficiency a requirement.

**Why it ranks first.** It is the largest lever in the growth ledger, and the cost section
says the chamber decides the case. Behind the spray cup, hydrogen doubles in 2.03 years when
solved, 2.66 at 70% of ceiling and 8.26 at 50%. Methalox, the incumbent, doubles in 7.92. A
hydrogen chamber at half its ceiling does worse than methalox.

**Survival items inside it** (`sec:rocket_nozzles`, `sec:nozzle_puffsats`):

- The copper liner's surface peaks at 370 to 1110 K against copper's 1356 K melting point.
- Spray cooling is not assured. A liquid on a surface far above its boiling point can float on
  its own vapor. At the 350 MJ high edge of the flux, the 230 MJ hydrogen charge cannot take
  back all the heat.
- The port sees about 0.2 GPa for microseconds, four times the peak the shell is sized for.
  The shell's response has not been checked.
- The foam plug's depth comes from a penetration law derived for dense targets. The paper says
  it needs a shock-physics simulation.

**Cheapest test.** An independent hydrocode run of one chamber blowdown. Pulsed-heat tests on
GRCop-84 coupons at the computed flux.

**Who.** A rocket chamber thermal group, or a hydrocode group.

**Status.** Open. No brief covers it. The old Brief A (magnetic nozzle, Ahedo and Merino)
aimed at this lever, but the paper now uses a walled chamber and calls the magnetic nozzle far
from maturity. Brief A needs replacing, not sending.

## R2. Plate jet efficiency

**Number.** The spray cup reaches `eta_jet` 0.57 to 0.61 unmixed and 0.67 to 0.71 premixed.
The parent takes 0.60 as the baseline and 0.57 as the downside. The tethered argon plug
reaches about 0.70 (`sec:plate_liquid_spray`).

**Basis.** A one-dimensional solve with real gas physics, scaled for sideways spill by
two-dimensional runs on a simpler gas. The parent bibliography's own note on the simulation
reads "Preliminary single-code result; pending independent hydrocode validation".

**Consequence.** Smaller than R1. Behind a solved hydrogen chamber, 0.60 doubles in 2.03
years and 0.70 in 1.80. It matters more for credibility than for the ledger, because every
plate number in the paper rests on it. An open flat plate reaches only 0.33 to 0.40, so the
bowl and skirt carry most of the gain.

**Cheapest test.** One run of the spray-cup geometry in an existing open hydrocode by someone
other than the author. Of everything in this register, it buys the most credibility for the
least money.

**Status.** Open.

## R3. Spray and pulse shock rather than pass through each other

**The risk.** R2's figure assumes the PuffSat gas and the spray collide as fluids. If the two
flows interpenetrate instead, there is no cushion and 0.60 does not apply. This was Brief B's
gate question for the Plasma Liner Experiment (PLX) team.

**What exists.** The companion's `CONTEXT.md` puts the mean free path at about 1 µm or less
at every slug density in its range, seven orders below the system scale. Its water-plate
study models the contact with no interpenetration across it, as a stated assumption.

**What is missing.** The same check on the arriving PuffSat gas, at cross-sections for the
relative velocity rather than thermal ones, and at the cloud's leading edge, where density is
lowest.

**Our estimate, to be confirmed upstream.** The companion's water reference case has incoming
gas at 0.124 kg/m³ and 45.58 km/s. That is about 4e24 molecules per cubic meter. A
cross-section of 1e-19 m² gives a mean free path near 2 µm, and even 1e-21 m² gives about
0.2 mm. The spray cloud is about 4 m deep. Unless the leading edge is many orders thinner,
the flows are collisional.

**Status.** Likely closed. The request to the companion is in `todos/mfp_companion_request.md`.
If the companion confirms it, Brief B drops out of the gate role. PLX stays the referral for
when an experiment is wanted.

## R4. Plate face under repeated shock

**Number.** With a spray cloud about 4 m deep standing about 1 m off the floor, the face sees
0.9 to 2.5 GPa for 1 to 30 µs. The allowable is 2.5 GPa (`sec:plate_face`).

**Margin.** None at the top of the range. The allowable is set below the measured Hugoniot
elastic limit (HEL) of maraging 350, 4.8 GPa give or take 2.0. The low end of that range,
2.8 GPa, sits just above the allowable.

**What the HEL does not cover.** It is a single-shock measurement. A push applies about 1060
to 1500 shocks (the paper uses both counts, see below). Damage that builds up over repeated
microsecond shocks is a separate question from where a single shock yields.

**Dependencies.**

- The cloud geometry is a requirement on the spray. A 1 m cloud gives 4.7 to 7 GPa.
- The floor is tapered to match the impulse it receives to 15 to 20%. The struck center takes
  about four times the mean kick, and a uniform floor fails at any thickness. An offset
  footprint breaks the match, which is why aiming is held to about 0.5 m (R7).
- The bulk must stay below the 480 °C aging temperature (R5).

**Cheapest test.** Repeated plate-impact or laser-driven shocks on maraging 300 and 350
coupons at 2.5 GPa and 1 to 30 µs, run to the push's pulse count, then sectioned for spall
and microstructure.

**Who.** A shock-compression group.

**Status.** Open. First brief.

## R5. Pitch film and its vapor shield

**Number.** The footprint takes 22 to 25 MJ/m² per pulse. Shielded by its own vapor, the film
burns 4 to 6 kg a pulse. With no vapor shield it loses 28 to 33 kg, which would burn through
150 µm in one pulse. The parent specifies a standing film of 225 to 300 µm. Under it the
steel peaks at 400 and 342 K, below maraging's 753 K aging limit (`sec:plate_face`).

**Margin.** The factor of about six between shielded and unshielded loss rests on the shield.
If it fails, the paper charges the extra pitch as launched mass, adding $4 to $5 per kilogram
for the solved chambers and $25 for methalox. The paper does not say whether the steel
temperatures hold without the shield.

**Cheapest test.** A pulsed plasma gun or an arc jet on pitch-coated maraging coupons at 22 to
25 MJ/m² per pulse. Orion's ablation experiments are the precedent (`ga5009_vol3`).

**Who.** An ablation or arc-jet group. A second survivability brief, after R4.

**Status.** Open.

## R6. Recombination while the gas still presses on the plate

**Number.** Argon at 50 km/s and `k = 10` holds 38.1 of about 100 MJ/kg as ionization. The
Saha equation puts it 99% recombined by 15,700 K at 1 GPa. For water, the finite-rate
calculation returned 23 to 31% of the stored bond energy by 250 µs (`sec:plate_liquid_spray`,
`sec:exponential_mass_growth`).

**Margin.** The jet efficiency already charges the PuffSat's own water bonds as lost, so the
water toll is counted. Argon's recombination is an equilibrium argument, not a rate. The water
calculation layered the gas against a flat wall, and which way mixing moves it has not been
computed.

**Cheapest test.** Finite-rate chemistry inside the R2 hydrocode run.

**Status.** Open, carried inside R2.

## R7. Terminal guidance

**Numbers** (`sec:guidance_navigation`, `sec:plate_aiming`, `sec:nozzle_puffsats`). All are
requirements, and none is simulated.

- Plate: footprint offset held to about 0.5 m, at 46 to 68 km/s closing and 4 pulses a second.
- Formation center within 20 m of the target orbit from about two days out. The target shifts
  up to 300 m to meet it. Single-fix delta-DOR errors of 151, 37 and 9 m.
- Rod: ship trackers place it to about 1 cm at 7 km, a tenth of a second out. The door moves
  at up to 10 g and locks 20 ms before arrival. Clearance is 2 cm.

**Objections a guidance reviewer is likely to raise.** These are ours, not the paper's.

- Pulse-to-pulse lateral scatter after a sixteen-day coast, against a 0.5 m offset.
- The rod's swing on its tethers, which the paper says has not been simulated.
- Whether a 1500 t vehicle follows the stream's shared error between pulses 250 ms apart,
  with plate tilt, impact offset and thrusters.
- Tracker latency when the rod covers 7 km in the last tenth of a second.

**Cheapest test.** A Monte Carlo error budget from release to impact. It is a simulation, so
it costs time rather than money, and the brief should not go out before it exists.

**Who.** A kinetic-impactor terminal-guidance group.

**Status.** Open. Second brief. The guidance section itself is current (commits dfa1976,
88a8b91, 7e5be62).

## R8. Skirt sliding seal

**Number.** Through a 10 mm gap about 1.6 kg of gas and 140 MJ leak per pulse, and through
1 mm about 14 MJ. The floor grows about 22 mm across for every 100 K it warms. The seal must
hold over the 10 cm the floor moves while gas is present (`sec:plate_skirt`).

**Margin.** The paper calls both leak figures estimates and does not state them as a share of
the pulse's energy. That share is the homework before any brief mentions the seal.

**Status.** Open. One sentence in the R4 brief, not a brief of its own. The sliding skirt
exists to avoid a 1 to 3 GPa stress wave at a bolted joint, so it trades a structural risk
for a sealing one.

## R9. PuffSat coast and approach survival

**Numbers** (`sec:pusher_plate_puffsats`).

- A grain above 185 µm punctures about one 10 kg sphere in 170 over a sixteen-day coast. That
  rate sizes the vehicle's propellant reserve.
- The Kevlar wires lose strength about 240 ms before impact, so the firing time goes down them
  a second early.
- Gas from earlier pulses delivers 90% of its heating in the last 0.3 s. The curve is sketched,
  not computed.
- Whether blanket shreds survive the spray has not been computed.

**Cheapest test.** Hypervelocity impact on the Echo II laminate at ordinary light-gas-gun
speeds, against NASA's shield-design rule.

**Status.** Open, low priority. Each loss is covered by a reserve rather than by the physics
of the cycle.

## R10. Launch price and the cost table

**Number.** The lob at $26.6 per kilogram lofted is the only price with a source, and it is
about three fifths of the solved chambers' $122 to $124 per kilogram at L1
(`sec:l1_cost`). Every other price is a hypothesis.

**Margin.** With every price pessimistic at once, the solved chambers cost $508 to $563, just
over Starcloud's $500. At Musk's $2 million a Starship flight, Starship reaches L1 for $50 to
$85 and no PuffSat design beats it unless the lob cheapens too. Counting the seed at even odds
raises the break-even to $192 to $205 on the cheapest seed.

**Who.** A launch-cost analyst, sent with the companion proposal rather than a physics brief.
The question is whether a booster 10 to 20% larger than Super Heavy, flown straight up to
400 km and back, can sell for $26.6 per kilogram lofted.

**Status.** Open. It does not decide anything until R1 to R4 come back.

## R11. Safety and dual use

**The risk.** A stream of tonnes of mass at 46 to 68 km/s, aimed at Earth's neighborhood,
will draw a dual-use objection from any funder or reviewer. The paper treats anti-satellite
weapons as a threat to data centers (`sec:data_center_attacks`). It does not discuss the
stream itself as a weapon, or what happens to a wave that misses its vehicle.

**What exists.** The deployment rocket leaves the stream with a 7 m/s burn that moves its
arrival 10,000 km aside. Formation gaps of one to two seconds open around satellites. Debris
after the push continues on heliocentric orbits.

**Cheapest answer.** A written paragraph in the parent, not a test. The questions it has to
answer are where a missed wave goes, and why the stream is a poor weapon.

**Status.** Open, unanswered in the paper.

## What a first grant could buy

Cheapest first, and every item fits inside an existing facility or code:

1. An independent hydrocode run of the spray cup, covering R2, R3, R6 and R8.
2. Repeated-shock coupons of maraging steel (R4) and pulsed-heat coupons of pitch-coated
   steel (R5).
3. Pulsed-heat coupons of GRCop-84 and a chamber blowdown run (R1).
4. A guidance error budget (R7), which costs the author's time only.

## Open items in this file

- The paper gives the push as "a 1500-pulse push" in the thermal paragraph and "about 1060
  pulses" in the pitch paragraph of `sec:plate_face`. Reconcile in the parent, then copy down.
- R3's estimate is ours. Replace it with the companion's figure once it exists.
