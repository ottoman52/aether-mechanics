# Paper 1 — General Overview — Accuracy Review

Reviewed: 2026-07-07 (post commit 720541c "Spin-channel Coulomb revision")
File: `TeX/1 - General Overview.tex` (761 lines). Line numbers below refer to this file unless another paper is named.
Scope: accuracy audit taking the framework's premises as given; not a verdict on aether theory itself.

## Summary

**0 Critical / 7 Major / 9 Moderate / 9 Minor.** *(Post-verification 2026-07-07: counts unchanged — all seven Majors survive adversarial verification; M1/M5/M7 confirmed as written, M2/M3/M4/M6 revised in place — M2, M3, M4 strengthened by companion-paper/verification-pass evidence, M6's supporting arithmetic corrected without change of verdict. All spot-checked Moderates and all four bibliography errors confirmed. No findings refuted.)*

The 720541c revision successfully rewrote the Coulomb-constant paragraph in a more honest register (it now names the one-winding-per-cycle postulate and says "at the reference parameter point") and fixed the Lorentz-violation sentence (now correctly attributes the constraint to the *spin* healing length). However, the paper's characteristic failure mode — presenting companion papers' fitted parameters and open problems as derived results and observational matches — persists in every other flagged location: the Hubble offset is still Paper 6's single fitted parameter presented as a matching prediction; the photon sphere/shadow still "match" EHT while Paper 3 lists the strong-field solution as open; the new Coulomb text still drops the f_core caveat (a-priori f_core would make k run 7–17% high); the "exactly linear Lorentz factor," "thirteen significant digits," and "five experiments regarded as disproving aether" claims are unchanged; and a new instance of the pattern was found (string tension "matches" lattice QCD when it is actually the input). All four bibliography errors from the prior review remain, as do the Hawking-mechanism misattribution to Paper 3 and the vacuum-catastrophe story that contradicts Paper 3's own account. All recomputable arithmetic in the paper checks out.

## Verification Pass (2026-07-07)

Adversarial re-check of every Major finding (cited TeX re-read in context in Paper 1 and each companion; all arithmetic recomputed independently in PowerShell; reviewer's physics/history claims and all four bibliography claims checked against the actual publications). Goal: refute the review. Result: nothing refuted.

| ID | Verdict | Note |
|---|---|---|
| M1 | **CONFIRMED** | History checks out: Sagnac's own 1913 title ("L'éther lumineux démontré...", quoted verbatim in Paper 1's bibliography L616–619) presents the result as proof of aether; Bradley 1728 predates the debate and was explained by stationary aether; Fizeau 1851 confirmed Fresnel's partial-drag theory. Paper 1 L48–51/L308–312 wording verified. |
| M2 | **REVISED** (verdict stands, strengthened) | Reviewer citation error: the "is expected... requires quantitative verification" passage is Paper 6 L879–884, not Paper 3 L879–883 — Paper 3 contains *no* photon-sphere/EHT text at all outside its open-questions list (grep: "photon sphere"/"Event Horizon Telescope" appear only at Paper 3 L631). Strengthens the finding: Paper 1 attributes to Paper 3 a derivation that paper never performs. |
| M3 | **REVISED** (verdict stands, strengthened) | Paper 6 L614–629 verified verbatim ("the analysis's single fitted parameter... only η is determined by matching"). Additionally, Paper 6's verification pass (its C2, confirmed) established the baseline itself contains a sign/double-counting error: corrected η ≈ 0.11, and the thermal term then supplies only ~+2.6 of the +5.6 km/s/Mpc, with standard void outflow supplying the rest. Paper 1's "approximately 5 km/s/Mpc... matching" is thus both circular and arithmetically stale. |
| M4 | **REVISED** (verdict stands, strengthened) | 7(a) L918–925 ("selects the point"), L944–953 (f_core 0.18–0.26 vs a-priori 5–14%; k runs 7–17% high), Honest Flags L1002–1015 all verified verbatim; +0.13% arithmetic reproduced. Additionally strengthened by 7(a)'s verification pass: C1 (adjudicated) makes the far-zone force law *conditional* on an underived 0/π lock selection — so "derives its numerical value from ring parameters alone" overstates even the derivation's status, and 7(a) M2 (wrong Donnelly bracket constant) moves the f_core target to ≈0.38, further from the a-priori band. |
| M5 | **CONFIRMED** | γ = (1−β²)^(−1/2) is not linear in β² (Ives–Stilwell-class experiments confirm the β⁴ terms). Paper 2's own formulation (L55–56, L593–597) is "no higher-order corrections (v⁴/c⁴ terms) detected" in the *pressure–density response* — Paper 1's compression into "Lorentz factor... exactly linear" asserts something false. Reviewer's fix (γ⁻² = 1 − v²/c²) is the correct statement. |
| M6 | **REVISED** (verdict stands; reviewer's supporting number corrected) | The reviewer's "~10⁻¹⁰ relative on g/2 (~10–11 digits)" conflated scales: δα/α ≈ 8×10⁻¹¹ (Rb 2020) propagates to ~9×10⁻¹⁴ on g/2 (recomputed), so theory–experiment agreement actually holds through ~12 digits of g/2 with the 13th digit unresolved (exp−theory ≈ +0.5×10⁻¹² (Rb) / −0.9×10⁻¹² (Cs), the >5σ Cs–Rb α tension ≈ 1.4×10⁻¹² on g/2, recomputed). The finding's core survives: the paper's claim is about "corrections from virtual pair loops" — a_e ≈ 1.16×10⁻³ is confirmed to ~4–8×10⁻¹⁰ relative, i.e. **9–10 significant digits, not thirteen**. Thirteen digits describes only the Fan et al. 2023 measurement of g/2. |
| M7 | **CONFIRMED** | Paper 5 L857–867 verified: X ≡ ρ_bridge/ρ_A = 4σ/(πξ²K_A) — σ is an input ("determined by the three constrained quantities σ, ξ, K_A"), X the output; E_junction ≈ 29 MeV "inferred from the difference" (L887–889) verified. Paper 5's own review verification pass independently confirmed the input-vs-output circularity (its M3). Nothing in Paper 5 predicts σ. |
| Mo1 | CONFIRMED (spot) | η ≈ 0.22 (P6 L618–623), f_core (7(a) L944–948), E_junction (P5 L887–889), −0.017 (7(a) eq:alpha-master) all verified as additional fitted/undetermined quantities beyond Paper 1's three. |
| Mo2 | CONFIRMED (spot) | Paper 3 L223–244 + L594–598 = recycling-asymmetry story with ratio explicitly open; bulk-modulus reinterpretation lives in Paper 6 L1670–1673 and resolves 10⁸⁵ of 10¹²⁰ by that paper's own statement. Paper 1 L335–337 misattributes and overstates, as charged. |
| Mo3 | CONFIRMED (spot) | Grep of Paper 3: "Hawking" appears only in the open-questions list (L632) and the bare T_H formula (L893–899). The mechanism (asymmetric transient binding at the sonic horizon) is Paper 6 §Hawking Radiation L800–857. |
| Mo4 | CONFIRMED (spot) | Paper 7 L146–150 verbatim: full derivation "requires specifying the spin-orbit coupling Hamiltonian... and remains an open calculation"; also open-questions item at L1719–1726. Paper 1 L137–141 asserts it declaratively. |
| Mo7 | CONFIRMED (spot) | Drag was measured in water (n² ≈ 1.77) and moving glass (n² ≈ 2.3); no drag measurement approaches 6:1 (diamond value is refractive-index data). Note: Paper 2 L629–634 itself claims "experimental exactness of 1−1/n²... up to n² ≈ 6 (for diamond)" — the review's "Paper 2 hedges" is generous; the overclaim exists in both papers (propagate the fix). |
| Mo8 | CONFIRMED (spot) | 7(a) L930–941 verified (m_e pins K_C = ρ_A/m_A²); f_core ≈ 0.216 recomputed from the α closed form (4π[ln(8√2·666/0.511)−½] = 114.34). 7(a) review M2 (bracket constant) makes "derived" even less tenable. |
| Mo9 | CONFIRMED (spot) | D/A definitions (L476–482) vs Higgs amplitude-mode "(D)" (L505–507) inconsistency verified in the file. |
| Mi1 | **CONFIRMED** (web) | tajmar2024 is Sci. Rep. 14, article 19427 (2024); paper cites 18647 — wrong. |
| Mi2 | **CONFIRMED** (web) | hathaway2021 is Physics 3, 160–172 (MDPI/ADS bibcode 2021Physi...3..160H); paper cites 160–173 — wrong. |
| Mi3 | **CONFIRMED** (web) | svancara2024 is Nature 628, 66–70 (2024); paper gives DOI only — incomplete. |
| Mi4 | **CONFIRMED** (web) | Published title (ApJL 930, L12; arXiv:2311.08680) reads "...in the Center of the Milky Way"; paper's "at" — wrong. |
| Mi9 | CONFIRMED (spot) | X = 8σ/(πℏ²K_C) = 1.03×10⁸ recomputed; Paper 5 L777–779 acknowledges the update; Paper 1 L368 still quotes only 7×10⁷. |

**Notes on non-CONFIRMED items** (all revisions are in the finding bodies below):
- **M2:** Verdict unchanged and strengthened. The reviewer misattributed the "expected to match" hedge to Paper 3; it is in Paper 6 (L879–884: "the strong-field extension is expected to yield the correct photon sphere radius and shadow size, but this requires quantitative verification"). Paper 3 itself never derives a photon sphere — its only mentions are in the open-questions list — making Paper 1's "Paper 3 derives... the photon sphere radius matching EHT" (§4.2, citing Paper 3) worse than the review stated.
- **M3:** Verdict unchanged and strengthened by Paper 6's verification pass (C2 confirmed): with the curvature term restored the fitted value is η ≈ 0.11 (not 0.22) and the Aether-specific thermal term supplies only ~+2.6 km/s/Mpc of the +5.6 total. Paper 1's sentence now inherits both the circularity and a confirmed sign error in the companion's decomposition.
- **M4:** Verdict unchanged and strengthened by 7(a)'s verification pass: the far-zone Coulomb force law is conditional on an underived 0/π lock selection (7(a) C1, adjudicated), and the Donnelly bracket-constant error (7(a) M2) moves the pre-registered f_core target from ≈0.22 to ≈0.38. "Derives its numerical value from ring parameters alone" is therefore additionally overclaimed: what stands unconditionally is a near-zone normalization evaluated at a selected parameter point.
- **M6:** Verdict unchanged; the reviewer's own intermediate figure was wrong (a factor-of-10³ scale conflation between a_e and g/2). Corrected chain: measurement 1.3×10⁻¹³ on g/2 (13 digits, Fan et al. 2023) → α-limited theory ~9×10⁻¹⁴–1.4×10⁻¹² on g/2 (12–13 digits, clouded by the Cs/Rb >5σ α tension) → but the *loop corrections* a_e are confirmed to only ~9–10 significant digits. The paper's "corrections... confirmed to thirteen significant digits" remains overstated by ~3–4 digits; fix direction unchanged.

## Critical Findings

None.

## Major Findings

### M1. "Five classical experiments historically regarded as disproving aether theories" — wrong for three of the five
- **Location:** Abstract L48–51; §4.1 L308–312.
- **Claim:** Michelson–Morley, Kennedy–Thorndike, Sagnac, stellar aberration, and Fizeau are "the five classical experiments historically regarded as disproving aether theories."
- **Why wrong:** Only Michelson–Morley (and later Kennedy–Thorndike) were read as refuting (static) aether. Sagnac (1913) himself presented his result as *proof of* the aether — his paper's title is "L'éther lumineux démontré..." (the very title cited at L616–619 of this paper's own bibliography contradicts the claim). Stellar aberration (Bradley 1728) predates the debate and was long explained *by* a stationary aether. Fizeau (1851) *confirmed* Fresnel's partial-drag aether theory and was cited by aether proponents as support. Paper 2 (L53) uses the same wording, so this is a series-wide mischaracterization.
- **Fix direction:** Rephrase to e.g. "the five classical experiments that historically constrained aether theories" or split: two null results that refuted static aether + three experiments any aether theory must reproduce.
- **Prior status:** Still present.

### M2. Strong-field results (photon sphere/shadow, exact Hawking temperature) presented as derived/matching while Paper 3 lists them as open
- **Location:** Abstract L46–48 ("derives ... the Hawking temperature without fitted parameters"); §4.2 L329–333 ("derives ... the photon sphere radius matching Event Horizon Telescope observations"); §4.5 L398–401 ("The photon sphere and black hole shadow match Event Horizon Telescope observations of M87* and Sgr A*").
- **Why wrong:** Paper 3's own open-questions list (Paper 3 L620–633) states that a self-consistent strong-field solution is required to determine "(a) the exact location of the sonic horizon, (b) the precise photon sphere radius, (c) whether the Aether acoustic metric reproduces the Schwarzschild metric in the strong-field regime, and (d) the exact Hawking temperature coefficient." Paper 6 L879–884 says EHT consistency "is expected to yield the correct photon sphere radius and shadow size, but this requires quantitative verification through numerical ray-tracing." The weak-field inflow v_in = √(2GM/r) is a first-order approximation (Paper 3 L620–622); the photon sphere at r = 3GM/c² sits deep in the strong field (v_in/c ≈ 0.82), squarely where Paper 3 says the derivation is unproven.
- *(Revised 2026-07-07 by verification pass: the "is expected" hedge previously cited as Paper 3 L879–883 is actually in Paper 6 L879–884; Paper 3 contains no photon-sphere or EHT discussion at all outside its open-questions list. This strengthens the finding — Paper 1 §4.2 credits Paper 3 with a derivation that paper never performs; even the hedged strong-field discussion lives in Paper 6.)*
- **Fix direction:** "expected to match / consistent with, pending the strong-field solution (an open question of Paper 3)"; drop "Hawking temperature" from the abstract's "without fitted parameters" list or qualify as leading-order.
- **Prior status:** Still present.

### M3. Hubble tension "resolution" is Paper 6's single fitted parameter presented as a matching prediction
- **Location:** §4.5 L423–428.
- **Claim:** "The Hubble tension receives a quantitative resolution: temperature-dependent dark energy in voids produces a local expansion rate approximately 5 km/s/Mpc above the cosmic average, matching the observed discrepancy."
- **Why wrong:** Paper 6 (L614–629) is explicit that η ≈ 0.22 is "the analysis's single fitted parameter ... only η is determined by matching the observed local expansion rate" (H_0,local = 73.0 km/s/Mpc). The +5.2 km/s/Mpc thermal-pressure term (Paper 6 L670) therefore *cannot fail* to match the discrepancy — it is fitted to it. What the model genuinely supplies is a mechanism and the derived peculiar-velocity/Friedmann-deficit terms; the "match" is circular.
- **Fix direction:** "provides a mechanism that can account for the tension with a single fitted parameter (η ≈ 0.22, a 22% void thermal-pressure excess); independent tests are the T_void/T_wall ≈ 2.5 prediction and void-lensing signatures."
- *(Revised 2026-07-07 by verification pass: strengthened. Paper 6's verification pass confirmed its C2 — the "Friedmann deficit" baseline contains a sign/double-counting error; with the curvature term restored the fitted value is η ≈ 0.11, and the thermal-pressure term supplies only ~+2.6 km/s/Mpc of the +5.6 total (standard void outflow supplies the majority). Paper 1's "temperature-dependent dark energy... produces a local expansion rate approximately 5 km/s/Mpc above the cosmic average" is therefore not only circular but rests on a confirmed arithmetic error in the companion's decomposition; any fix should use the corrected η ≈ 0.11 figures.)*
- **Prior status:** Still present (wording unchanged in substance).

### M4. Revised Coulomb-constant paragraph still drops the f_core caveat and presents a selected point as an agreement test
- **Location:** §3 L230–242 (new spin-phase-pump text); related α claim at L273–275.
- **Claim:** "Paper 7(a) derives its numerical value from ring parameters alone, ke² = ρ_A κ_e² r_loop²/8π ..., the source normalized by a single topological postulate ...; the measured k = 8.99×10⁹ N m²/C² is reproduced to 0.2% at the reference parameter point."
- **Why misleading:** The formula, arithmetic, and postulate attribution are all faithful to Paper 7(a) (I verified: at ρ_A = 5×10¹¹ kg/m³, m_A = 666 MeV/c², the formula gives ke² = 2.310×10⁻²⁸ vs measured 2.307×10⁻²⁸ N·m², i.e. +0.13%, consistent with "0.2%"). But Paper 7(a) itself says (L918–925): "The substantive tests are **not this evaluation, which selects the point**" — (ρ_A, m_A) are chosen so agreement is near-exact; 0.2% is not a test. More importantly, Paper 7(a) L944–953 shows joint consistency with the electron mass **requires f_core ≈ 0.18–0.26, above the a-priori estimate of 5–14%; with the a-priori band the predicted k runs 7–17% high**. Paper 7(a)'s Honest Flags (L1002–1015) also list the underived duty factor (2/π boundary-layer conversion) and the open species-inheritance problem (why a muon or proton carries the electron's q₀). Paper 1 reports none of this. This is the same caveat-dropping the prior review flagged in the old "4%, no free parameters" text, carried into the new formulation.
- **Fix direction:** Add one clause: "...to 0.2% at the reference point, contingent on the core-energy fraction f_core ≈ 0.2 (a sharp, pre-registered requirement on an open GPE calculation; the a-priori estimate would leave a 7–17% discrepancy), with universality across charged species still open."
- *(Revised 2026-07-07 by verification pass: strengthened on two counts from Paper 7(a)'s own verification pass. (i) 7(a)'s C1 was adjudicated: the far-zone Coulomb force law is CONDITIONAL on an underived 0/π lock selection — what stands unconditionally is the near-zone normalization, so Paper 1's "Paper 7(a) derives its numerical value from ring parameters alone" overstates even the derivation's internal status, not just its caveats. (ii) 7(a)'s M2 established the Donnelly bracket constant −½ is the wrong literature constant (energy constant ≈ −1.615 for a GP core), which moves the pre-registered f_core requirement from ≈0.22 to ≈0.38 — even further above the a-priori 5–14% band. Any fix clause should say "conditional on the 0/π phase-lock selection (open)" alongside the f_core contingency.)*
- **Prior status:** Superseded in form; core dishonesty (dropped f_core caveat) still present.

### M5. "The Lorentz factor must be exactly linear in v²/c²" — false as written
- **Location:** §4.1 L301–303; echoed at §3 L229–231 ("experimentally confirmed by the exact linearity of the Lorentz factor").
- **Claim:** "the Lorentz factor must be exactly linear in v²/c² with no higher-order corrections."
- **Why wrong:** γ = (1−v²/c²)^(−1/2) = 1 + β²/2 + 3β⁴/8 + ..., which is manifestly *not* linear in β² and *does* have higher-order terms (all experimentally confirmed — Ives–Stilwell-class experiments see the full γ). The quantity that is exactly linear in v²/c² is γ⁻² = 1 − v²/c² (equivalently, the medium's quadratic energy response with no anharmonic corrections, which is what Paper 2 actually derives). As written, the sentence asserts something experiments refute.
- **Fix direction:** "γ⁻² must be exactly 1 − v²/c², with no anharmonic (higher-order in v²/c²) corrections to the medium response."
- **Prior status:** Still present.

### M6. Electron g−2 "confirmed to thirteen significant digits" — overstated by 2–4 digits
- **Location:** §2.2 L203–204.
- **Claim:** "the anomalous magnetic moment of the electron (corrections from virtual pair loops confirmed to thirteen significant digits)."
- **Why wrong:** Thirteen digits describes the *measurement precision* of g/2 (Fan et al. 2023: g/2 = 1.001 159 652 180 59(13), 1.3×10⁻¹³ relative). The *confirmation of the loop corrections* is the theory–experiment comparison, which is limited by the independent input value of α: δα/α ≈ 8×10⁻¹¹ (Rb 2020) propagates to ~9×10⁻¹⁴ on g/2, the Cs/Rb >5σ disagreement in α spreads the two theory predictions by ~1.4×10⁻¹² on g/2, and the observed exp−theory differences are +0.5×10⁻¹² (Rb) / −0.9×10⁻¹² (Cs) — so agreement is verified through ~12 digits of g/2 with the 13th unresolved. More to the point, the paper's claim is about the "corrections from virtual pair loops" themselves, a_e ≈ 1.16×10⁻³: relative to a_e the verified agreement is ~4–8×10⁻¹⁰, i.e. the loop corrections are confirmed to roughly 9–10 significant digits, not thirteen.
- *(Revised 2026-07-07 by verification pass: verdict unchanged; the original supporting figure "~10⁻¹⁰ relative on g/2 (~10–11 digits)" conflated the a_e and g/2 scales — ~10⁻¹⁰ is the α-limited relative precision on a_e, which is ~10⁻¹³ on g/2. All numbers above recomputed.)*
- **Fix direction:** "confirmed to about one part in 10¹⁰ (agreement limited by independent determinations of the fine structure constant)."
- **Prior status:** Still present.

### M7. String tension "matches the measured value from lattice QCD" — derivation direction inverted (new finding)
- **Location:** §4.4 L367–370.
- **Claim:** Bridges "are compressed by a factor of approximately 7×10⁷ ... and their energy per unit length (string tension) matches the measured value from lattice QCD."
- **Why wrong:** In Paper 5 the logic runs the other way: the lattice/measured string tension σ ≈ 1 GeV/fm is the *input*, and the compression ratio is the derived output, X = 4σ/(π ξ² K_A) ≈ 7×10⁷ (Paper 5 L857–867; same structure in Paper 7(a) L986–990, where σ ≈ 1.6×10⁵ J/m "evaluates" X). Nothing in Paper 5 predicts σ from aether parameters and then finds agreement with lattice QCD; saying the string tension "matches" lattice QCD presents an input as a successful prediction. (Similarly, Paper 5's proton-mass junction energy of 29 MeV is "inferred from the difference" with the measured proton mass — Paper 5 L887–889.)
- **Fix direction:** "their compression ratio (~7×10⁷) is fixed by the measured lattice-QCD string tension together with the healing length and bulk modulus."
- **Prior status:** New.

## Moderate Findings

### Mo1. "Just three free parameters" undercounts the framework's fitted/undetermined quantities
- **Location:** Abstract L43–45; §5 L525–530.
- **Claim:** The medium "with just three free parameters produces all known forces, special relativity, quantum mechanics, and cosmology"; §5 lists them (ambient density, quantum mass, gravitational asymmetry fraction).
- **Why misleading:** The companion papers rely on additional per-domain fitted or undetermined quantities: η ≈ 0.22 (Paper 6's fitted void thermal-pressure excess — its "single fitted parameter"), f_core (open; must come out 0.18–0.26 for the Coulomb/mass joint consistency, Paper 7(a) L944–948), the −0.017 correction in the α closed form, the one-winding-per-cycle normalization (a postulate, not a parameter-free result), E_junction ≈ 29 MeV (Paper 5, inferred from the proton mass), and η_K (Paper 6(b)). Three parameters may specify the *medium*, but the claim as written implies the listed phenomenology follows with no further inputs.
- **Fix direction:** "three fundamental medium parameters (individual analyses introduce a small number of additional constrained or fitted quantities, flagged in each paper)."

### Mo2. Vacuum-catastrophe resolution misstates Paper 3's account (and overstates "resolves")
- **Location:** Abstract L57–58; §4.2 L335–337.
- **Claim:** "The theory resolves the vacuum catastrophe: quantum field theory's enormous vacuum energy density is reinterpreted as the Aether's bulk modulus, a real and measurable quantity that determines the speed of light rather than curving spacetime."
- **Why wrong:** This appears in the *Paper 3 summary*, but Paper 3's actual mechanism is different: the vacuum energy is the total energy of the bind–unbind cycle, and the gravitating part is only the tiny unrecycled asymmetry (Paper 3 L223–244, L468–471); Paper 3 explicitly lists calculating that ratio as an open question ("could account for the enormous discrepancy," L239–243, L594–597). The bulk-modulus reinterpretation lives in Paper 6 (L1670–1673) — and there it resolves only a 10⁸⁵-fold discrepancy (10¹¹³ J/m³ → K_A ~ 10²⁸ J/m³), explicitly "compared to the 10¹²⁰-fold discrepancy with the observed cosmological constant." So Paper 1 attributes the wrong mechanism to Paper 3, and "resolves" overstates what either companion paper claims.
- **Fix direction:** Present both halves with correct attribution: recycling asymmetry (Paper 3, ratio calculation open) for why vacuum energy doesn't gravitate; bulk-modulus identification (Paper 6) for the magnitude bookkeeping.
- **Prior status:** Still present.

### Mo3. Hawking-radiation mechanism attributed to Paper 3; it lives in Paper 6
- **Location:** §2.2 L206–208 ("all three—Schwinger, Unruh, and Hawking radiation—are manifestations of a single binding mechanism (Paper 3)"); §4.2 L329–333 ("From this acoustic metric ... the theory derives ... Hawking radiation as asymmetric transient binding at the horizon" citing Paper 3).
- **Why wrong:** Paper 3 contains only the T_H formula in its Mathematical Summary (Paper 3 L893–899) and lists the exact coefficient as open (L632–633). The mechanism — asymmetric transient binding at the sonic horizon, the Hawking–Unruh identification, and the BEC-analog support — is developed in Paper 6 (§ "Hawking Radiation," Paper 6 L800–857, L1171–1177). A reader sent to Paper 3 for this content will not find it.
- **Fix direction:** Cite Paper 6 for the mechanism (or move the content note); Paper 1's §4.5 already correctly covers Hawking under the Paper 6 summary.
- **Prior status:** Still present.

### Mo4. Photon propagation at c₁ via spin-orbit coupling stated as established; Paper 7 calls the Hamiltonian open
- **Location:** §2 L137–141; §4.5 L418–421.
- **Claim:** "Through spin-orbit coupling, the photon's microscopic spin-wave character produces macroscopic mass currents indistinguishable from first-sound perturbations, so the effective propagation speed is the two-fluid first-sound speed c₁."
- **Why misleading:** Paper 7 (L145–149) says deriving this "requires specifying the spin-orbit coupling Hamiltonian of the Aether condensate and **remains** [open]," and lists it among its open questions (Paper 7 L1719–1723). Paper 1 asserts it declaratively (and the §5 table even labels "photon field with flow disturbances propagating at the wave speed" as **D**erived, L488–489). There is also an unresolved internal tension the overview glosses: light is said to propagate "without dissipation" because the superfluid component has zero viscosity (L135–137), yet first sound is a mode of the *combined* fluid whose normal component is viscous.
- **Fix direction:** Add "(a proposed mechanism; deriving the spin-orbit Hamiltonian is an open question of Paper 7)."

### Mo5. "This binding mechanism is not speculative" / vacuum-fluctuation phenomena "directly demonstrate transient binding" — reinterpretation presented as confirmation
- **Location:** §1 L87–93; §2.2 L200–204.
- **Claim:** Binding "is not speculative—it is the experimentally confirmed process of particle–antiparticle pair formation and annihilation, reinterpreted..."; Casimir effect, Lamb shift, and g−2 "directly demonstrate transient binding."
- **Why misleading:** What is experimentally confirmed is pair production/annihilation and vacuum-fluctuation phenomenology as described by QFT. The *aether-binding reinterpretation* (medium coalescing/dissolving, electron vortex as DCE boundary) is exactly the speculative content of the theory; the experiments demonstrate the phenomena, not the mechanism. "Directly demonstrate" claims discriminating power these observations do not have (they are equally consistent with standard QFT, as the paper's own §5 concedes by calling virtual-particle identification "P — Proposed," L489–490 — an internal contradiction with L200's "directly demonstrate").
- **Fix direction:** "are consistent with / are reinterpreted as" rather than "demonstrate"; delete "not speculative."

### Mo6. Bulk-modulus constancy "experimentally confirmed by the exact linearity of the Lorentz factor and the Fresnel drag coefficient" — circular and repeats M5's error
- **Location:** §3 L229–231.
- **Why misleading:** Within the framework, constant K_A ⇒ Lorentz form and 1−1/n² drag; the experiments confirm those formulas, which is consistency, not independent confirmation of the mechanism (any theory reproducing SR passes the same tests — the paper itself credits SR's success this way at L77–79). And "exact linearity of the Lorentz factor" repeats the false phrasing of M5.
- **Fix direction:** "consistent with the exact Lorentz form confirmed experimentally" and fix the linearity wording.

### Mo7. Fresnel drag credited with confirming linearity "across material density ratios up to nearly 6:1"
- **Location:** §4.1 L305–307.
- **Why misleading:** The 6:1 figure is Paper 2's n² ≈ 6 for *diamond* (Paper 2 L633), which comes from refractive-index/transmission observations, not from drag measurements. Fizeau-type drag experiments were done in water (n² ≈ 1.77) and moving glass (n² ≈ 2.3, Jones 1972/1975) — a factor ~2, not ~6. Paper 2 itself hedges this by attributing the 6:1 extension to the drag *derivation* plus refractive-index data (Paper 2 L560–565); Paper 1 compresses it into a claim that the drag coefficient itself was confirmed at 6:1.
- **Fix direction:** "the Fresnel drag coefficient (measured up to n² ≈ 2) and the constancy of K_A implied by transparent high-index media (n² ≈ 6 for diamond) extend this confirmation..."

### Mo8. Electron mass "derived ... with no fitted parameters beyond the two fundamental Aether constants" — it is a constraint on those constants, not a prediction
- **Location:** §4.6 L457–459; §5 L529–530 ("The electron mass has been derived from vortex energy (D)"); related α claim L273–275.
- **Why misleading:** With two free parameters (ρ_A, m_A) and one target (m_e), the mass equation defines a curve in parameter space — Paper 7(a) treats it exactly so, using it to pin K_C = ρ_A/m_A² (Paper 7(a) L930–941), with the result further contingent on the open f_core calculation and an unverified vortex-energy bracket constant (Paper 7(a) L954–964). "Derived with no fitted parameters" implies m_e is an output of independently fixed inputs; it is the calibration point. The same applies to the α closed form quoted at L273–275: α⁻¹ = 4π[ln(8√2 m_A/m_e) − ½](1 + f_core − 0.017) contains the undetermined f_core (must be ≈ 0.216 at m_A = 666 MeV/c², verified numerically) and an unexplained −0.017, so α is constrained, not derived.
- **Fix direction:** "the electron mass equation constrains the two fundamental Aether constants (and is jointly consistent with the Coulomb constant, contingent on the open f_core calculation)."

### Mo9. D/A/P classification inconsistencies in the Standard Model section
- **Location:** §5 L484–507.
- **Details:** (a) "The Higgs boson is the amplitude mode of the condensate—the same mode observed in superconductors and cold atomic gases (**D**)" (L505–507): by the paper's own definitions (D = follows mathematically from Aether parameters via explicit derivation chains, L476–478; A = established in other condensed-matter systems and expected to carry over, L478–481), this is a textbook **A** — the observation in superconductors/cold gases is precisely the analogical evidence, and no derivation from Aether parameters exists (the very next sentence says matching 125 GeV "remains open (P)"). (b) "the photon field with flow disturbances propagating at the wave speed (**D**)" (L488–489) conflicts with Mo4: the actual propagation story (spin waves at c₁ via spin-orbit coupling) is open per Paper 7.
- **Fix direction:** Relabel Higgs amplitude mode as A; qualify the photon-field label.

## Minor Findings

### Mi1. tajmar2024 article number wrong
- **Location:** L713–716. Cited as Sci. Rep. 14, 18647 (2024); the article number is 19427.

### Mi2. hathaway2021 page range wrong
- **Location:** L708–711. Cited as Physics 3, 160–173; correct range is 160–172.

### Mi3. svancara2024 missing volume/pages
- **Location:** L703–706. "Nature (2024). DOI..." — should be Nature 628, 66–70 (2024).

### Mi4. eht2022 title misquoted
- **Location:** L646–649. "...Supermassive Black Hole **at** the Center of the Milky Way" — the published title reads "**in** the Center of the Milky Way."

### Mi5. Twenty-two uncited bibliography entries
- **Location:** L569–758. Only wilson2011, casimir1948, lamb1947, schwinger1951, unruh1976, weber1856, everitt2011, volovik2003, and the seven otto-* entries are cited in the text. Uncited: maxwell1865, michelson1887, kennedy1932, sagnac1913, bradley1728, fizeau1851, eddington1920, eht2019, eht2022, ligo2016, steinhauer2019, lux2017, xenon2018, pandax2017, desi2025, kovacs2022, miller2021, riley2021, ligo2017gw170817, svancara2024, hathaway2021, tajmar2024. With manual thebibliography these all print regardless; either cite them where the corresponding claims appear (e.g., \cite{eht2019,eht2022} at L398–401, \cite{desi2025} at L427) or prune.

### Mi6. "All four forces" followed by a list of five manifestations
- **Location:** §4.4 L387–390. "All four forces are unified..." then enumerates electromagnetic, magnetic, strong, weak, and gravity — five items, with electric and magnetic counted separately. Reword ("All forces...") or merge the EM entries.

### Mi7. Weber–Kohlrausch characterization slightly anachronistic
- **Location:** §3 L248–251. Their 1855 measurement (published 1856) yielded, in Weber's convention, 4.39×10⁸ m/s (= √2·c); the identification of the charge-unit ratio with the speed of light was made subsequently (Kirchhoff 1857, Maxwell). "Yielded the speed of light" is acceptable modern shorthand but attributes the interpretation to the measurement.

### Mi8. Dynamic Casimir Effect described via "moving boundaries" without qualification
- **Location:** L88–91, L176–178. Wilson et al. (2011) observed the DCE using a SQUID-modulated *effective* electrical boundary (parametric modulation), not a mechanically moving boundary; no mechanically-moved-mirror DCE has been observed. Since the theory leans on literal boundary motion (electron vortex circulation), a one-line acknowledgment that the observed effect used an effective boundary would be more accurate.

### Mi9. Bridge compression ratio 7×10⁷ is stale relative to Paper 7(a)'s Coulomb-updated value
- **Location:** §4.4 L368–369. Paper 7(a) L986–993 updates the compression ratio to X ≈ 1.0×10⁸ ("about 50% above Paper 7's electron-mass-only estimate ≈ 7×10⁷"), and Paper 5 L777–779 acknowledges the update. Paper 1 quotes only the older 7×10⁷. Harmonize (e.g., "~10⁸" or "0.7–1.0×10⁸").

## Prior-Review Reconciliation

| 2026-06 finding | Status (2026-07-07) |
|---|---|
| Hubble offset: Paper 6's fitted η ≈ 0.22 presented as prediction | **Still present** (M3) |
| Photon sphere/shadow "matching EHT" vs open strong-field derivation | **Still present** (M2) |
| Coulomb "4%, no free parameters" dropping f_core caveat | **Superseded** by spin-phase-pump rewrite; formula/0.2% arithmetic verified, postulate now named, but f_core caveat and point-selection honesty still dropped (M4) |
| Electron g−2 "thirteen significant digits" | **Still present** (M6) |
| "Five experiments historically regarded as disproving aether" (Sagnac/aberration/Fizeau) | **Still present** (M1) |
| "Lorentz factor exactly linear in v²/c²" | **Still present** (M5) |
| LV-scale sentence conflating density and spin healing lengths | **Fixed** — L520–522 now reads "constrain the spin healing length," matching Paper 7 L1800–1802 |
| Hawking mechanism attributed to Paper 3 (lives in Paper 6) | **Still present** (Mo3) |
| Vacuum catastrophe "bulk modulus" vs Paper 3's recycling-asymmetry story | **Still present** (Mo2) |
| tajmar2024 article number (should be 19427) | **Still present** (Mi1) |
| hathaway2021 pages (should be 160–172) | **Still present** (Mi2) |
| svancara2024 missing "Nature 628, 66–70" | **Still present** (Mi3) |
| eht2022 "in the Center" | **Still present** (Mi4) |
| Many uncited bibitems | **Still present** (Mi5) |

## Verified Sound

- **Electric/gravitational hierarchy 4.17×10⁴²** (L58–60, L261): recomputed ke²/(G m_e²) = 4.166×10⁴². Correct.
- **Coulomb formula arithmetic** (L237–242): ke² = ρ_A κ_e² r_loop²/8π at ρ_A = 5×10¹¹ kg/m³, m_A = 666 MeV/c² gives 2.310×10⁻²⁸ vs measured 2.307×10⁻²⁸ N·m² (+0.13%); the quoted "0.2%" is a fair (slightly conservative) statement of the reference-point evaluation. Dimensions check (kg/m³ · m⁴/s² · m² = N·m²). Faithful to Paper 7(a) Eq. k-final.
- **α closed form internal consistency** (L273–275): 4π[ln(8√2·666/0.511) − ½] = 114.34; matching α⁻¹ = 137.036 requires 1 + f_core − 0.017 = 1.1985, i.e. f_core ≈ 0.216 — consistent with Paper 7(a)'s "0.22 at m_A = 666 MeV/c²." (Honesty issue is Mo8, not the algebra.)
- **CERN muons at 0.9994c** (L305): γ = 29.3 (BNL/CERN g−2 storage rings) gives v/c = 0.99942. Correct.
- **Healing length ↔ quantum mass** (L151, L455–456): ξ = ħ/(√2 m_A c) gives 0.279 fm at 500 MeV and 0.164 fm at 850 MeV — the quoted 0.17–0.28 fm band and the "≈0.2 fm" figure are consistent (0.16 vs 0.17 rounding at the top of the mass range).
- **Logarithmic EOS uniqueness** (L160–162, L455): K = ρ dP/dρ = const ⟺ P = K ln(ρ/ρ₀) + const. The uniqueness claim is mathematically correct.
- **μ₀ not independent** (L244–246): μ₀ = 1/(ε₀c²); given k and c, permeability is derived. Correct (definitionally so in pre-2019 SI).
- **SM "approximately 19 free parameters"** (L525): standard count (without neutrino masses) is 19. Correct with the hedge.
- **Doubly quantized vortex instability in BECs** (L449–452): confirmed experimentally (e.g., Shin et al., PRL 2004). Correct.
- **Internal consistency of the three-parameter list**: abstract (L44) and §5 (L527–529) agree on the count and identity (density, quantum mass, asymmetry fraction).
- **KBC void "6σ anomaly"** (L425–426): matches Haslbauer et al. (2020) 6.04σ tension figure. Defensible.
- **Bibliography spot-checks that passed:** wilson2011 (Nature 479, 376), casimir1948 (Proc. KNAW 51, 793), lamb1947 (PR 72, 241), schwinger1951 (PR 82, 664), unruh1976 (PRD 14, 870), michelson1887 (Am. J. Sci. 34, 333), kennedy1932 (PR 42, 400), sagnac1913 (CR 157, 708), bradley1728 (Phil. Trans. 35, 637), fizeau1851 (CR 33, 349), eddington1920 (Phil. Trans. A 220, 291), everitt2011 (PRL 106, 221101), eht2019 (ApJL 875, L1), ligo2016 (PRL 116, 061102), steinhauer2019 (Nature 569, 688), lux2017 (PRL 118, 021303), xenon2018 (PRL 121, 111302), pandax2017 (PRL 119, 181302), miller2021/riley2021 (ApJL 918, L28/L27), ligo2017gw170817 (PRL 119, 161101), kovacs2022 (MNRAS 510, 216).
- **LV sentence** (L519–522): now correctly scoped to the spin healing length ξ_s, consistent with Paper 7's treatment (photon dispersion constraints apply to the spin sector; ξ_s ≪ ξ).

## Cross-Paper Dependencies

Items whose full verification requires (or was informed by) companion-paper checks:

1. **Paper 2**: the "exact linearity" formulation (which quantity is linear — Paper 2 L790–800 territory) and the Fresnel-drag 6:1 attribution (Paper 2 L556–565, L633); Paper 2 shares the "historically regarded as having disproved" framing (Paper 2 L53) — M1's fix should propagate there. Paper 2's E=mc² derivation issue (its review's C1) sits behind L299–300's "work integral" summary.
2. **Paper 3**: strong-field open items (L620–633) behind M2; vacuum-catastrophe recycling story (L223–244, L594–597) behind Mo2; G ∝ ε ρ_A ψ² circularity (Paper 3 review) behind L253–263's "all calculable in principle."
3. **Paper 6**: η ≈ 0.22 fitted (L614–629) behind M3; Hawking mechanism section (L800–857) behind Mo3; bulk-modulus vacuum bookkeeping (L1670–1673) behind Mo2; "naturally produces cored profiles" and Milky Way Δc₁²/c² ≈ 6×10⁻⁶ (L1661–1668) — quantitative adequacy not yet audited (Paper 6 review scope). GW170817 scalar-polarization problem (Paper 3 review C1) is unmentioned in Paper 1's cosmology summary.
4. **Paper 7**: spin-orbit Hamiltonian open (L145–149, L1719–1723) behind Mo4/Mo9; m_A ≤ 850 MeV from glueball comparison (L1131–1146) — the "500–850 MeV" band at L456 traces to this.
5. **Paper 7(a)**: point-selection statement (L918–925), f_core requirement (L944–953), honest flags (L1000–1024), updated compression ratio (L986–993) behind M4, Mo8, Mi9.
6. **Paper 5**: σ-as-input structure (L857–867) and E_junction inference (L887–889) behind M7; the claimed Lüscher-term/flux-tube-width/string-breaking reproductions (Paper 1 L376–380) should be audited for the same input-vs-output direction in the Paper 5 review.
