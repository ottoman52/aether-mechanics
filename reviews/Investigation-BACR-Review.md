# Investigation — Bound Aether Core Ring — Accuracy Review

Reviewed: 2026-07-07 (post commit 720541c)
File: `TeX/Investigation - Bound Aether Core Ring.tex` (dated "April 2026 — Working Document")
Scope: accuracy audit taking the framework's premises (superfluid Aether, DCE, quantized vortex-ring electron) as given. All numeric claims recomputed with CODATA values (m_e c² = 0.51099895 MeV, ℏ = 1.054571817e-34 J·s, ℏc = 197.327 MeV·fm), ρ_A = 5×10¹¹ kg/m³.

## Summary

**Counts: 2 Critical, 3 Major, 5 Moderate, 6 Minor.** *(Unchanged by the 2026-07-07 verification pass: 0 findings refuted, 2 revised in detail — C2's ring-density figures and M1's hollow-core constant attribution.)*

The document's internal arithmetic is almost entirely reproducible: the KE-only mass table, the density-deficit table, the −1/(8 ln) Bernoulli factor, the compression ratio X ≈ 4.4–4.9, and r_eq = 1.25ξ all check out to quoted precision. The two Critical findings are structural: (C1) the headline corrected window m_A ≈ 628–689 MeV comes from applying the (1 + f_core − 0.017) correction *outside* the self-consistency loop, which violates the document's own premise r_loop = ℏ/(m_e c); the correct treatment (now used in Paper 7(a)) gives 616–644 MeV, so the abstract's headline numbers are both methodologically inconsistent and superseded. (C2) The entire f_core = 5–14% premise conflicts with Paper 7(a)'s current Coulomb-derived requirement f_core ≈ 0.18–0.26; propagating the current value shifts the best-fit m_A to ≈ 656–679 MeV (outside 7(a)'s own 616–644 zone) and overturns the document's "sparsely filled core" structural conclusions. Beyond these, the "Donnelly formula" constant −1/2 is not Donnelly's ring-energy constant (Major), and two sections contradict each other on whether the electron mass depends on v_perm (Major). The document is properly labeled a working document, but it has been substantially superseded by Paper 7(a) and should either be retired or stamped as historical.

## Verification Pass (2026-07-07)

Adversarial re-verification of both Criticals and all Majors, with three Moderates spot-checked. All arithmetic re-derived independently in PowerShell from CODATA 2018 (m_ec² = 0.51099895 MeV, ℏ = 1.054571817e-34 J·s, c = 2.99792458e8 m/s, ρ_A = 5×10¹¹ kg/m³).

| Finding | Verdict | Notes |
|---|---|---|
| C1 | **CONFIRMED** | Doc's outside-loop table reproduced exactly (0.4946×1.033 = 0.5109 at 628; 0.4552×1.123 = 0.5112 at 689; doc-method best-fit 627.9/689.2). Self-consistent (F inside the solve) best-fit: 616.1 / 625.5 / 634.7 / 643.9 MeV for f = 5/8/11/14% — matches 7(a)'s published table; 7(a) endpoints reproduce (KE-only 0.5032 / 0.4836; corrected 0.5110 / 0.5109). One quibble: the 12 MeV shift at the f = 5% end is slightly *smaller* than the 14 MeV window half-width (the 45 MeV shift at f = 14% is 3× it); the conclusion is unaffected. §3.2's own text ("m_e represents the *total* energy" with r_loop = ℏ/(m_e c)) commits it to the inside-loop treatment its table does not perform — no hedge excuses this. |
| C2 | **REVISED** (substance confirmed; density figures corrected) | Best-fit m_A = 655.9–679.4 MeV ✓ ("656–679"); doc-method counterfactual 716.6–771.7 MeV ✓ ("717–772"); ring energy 0.092–0.133 MeV ✓. But the original "0.84–1.21 ρ_A in ≈ 375–410 fm³" paired the new f_core = 0.18–0.26 with the core volume at the *stale* m_A ≈ 600–616. Consistent pairing (each f_core at its own shifted best-fit m_A = 656–679) gives V ≈ 322–345 fm³ and ρ_ring = 0.95–1.47 ρ_A — the conclusion ("at or above ambient") is *strengthened*. Likewise the f = 0.14 figure is 0.71 ρ_A at its own best-fit m_A = 644 (0.65 was evaluated at m_A = 616, the f = 5% endpoint); still not "well below ρ_A". |
| M1 | **REVISED** (substance confirmed; hollow-core constant is convention-dependent) | Best-fit shifts verified: 605.6 (−½), 568.7 (−3/2), 564.3 (−1.615), 559.0 (−7/4), 549.2 (−2); overstatement 1.0/9.0 = 11.1% to 1.25/9.0 = 13.9% ✓. **Donnelly-convention adjudication:** this review's −3/2 and the 7(a) review's −2 for "hollow core" are *both* citable — they differ by core constitutive assumption, not by error. Fixed-core-volume hollow ring (pure external-flow KE, a ∝ R^(−1/2)): E-bracket −2, pairing with U-bracket −½ via U = (κ/4πR)[ln(8R/a) − α + 3/2]. Pressure-equilibrium / fixed-core-radius hollow ring: E-bracket −3/2, pairing with the same U-bracket −½ via U = (κ/4πR)[ln(8R/a) − α + 1]. Cross-checks: solid core α = 7/4 ↔ Kelvin β = ¼ (fixed volume); GP α = 1.615 ↔ β = 0.615 (ξ fixed) — internally consistent. Independent literature assessment: the GP ring-energy constant −1.615 (Roberts & Grant, 1970/71) endorsed, agreeing with 7(a)-review M2. The load-bearing point survives every convention: all standard energy constants (−3/2, −1.615, −7/4, −2) are more negative than −½, and −½ is the hollow-core *translational-velocity* constant. |
| M2 | **CONFIRMED** | Both passages exist verbatim as characterized: §3.3 ("m_e stays constant" under v_perm changes, lines 395–399) vs §5 ("total mass grows without bound… constrains v_perm to be close to c/√2", lines 476–482). §5 even says the log KE decrease only "partially cancels" the ring-mass increase — directly contradicting §3.3's exact cancellation. No hedge reconciles them. |
| M3 | **CONFIRMED** | Conservation (ΔKE = Δm_ring exactly) is asserted with a qualitative mechanism only ("the moving boundary does work… energy is drawn from the kinetic energy of the flow", lines 89–98); the document does hedge with "approximately conserved" and does address the vacuum-fluctuation source qualitatively, but offers no calculation that the log-released KE (½ρκ²r_loop ln(r_eq/ξ)) equals the DCE mass gain. The review's fix (state as postulate; m_ring = f_core·m_e is then a definition) stands. |
| Mo1 | **CONFIRMED** (spot check) | 1/(8·7.41) = 1.69% (straight-vortex normalization, as derived) vs 1/(8·8.99) = 1.39% against the ring bracket it multiplies. ✓ |
| Mo3 | **CONFIRMED** (spot check) | c/√π = 0.5642c ✓; r_eq = √(π/2)ξ = 1.2533ξ ✓; the Schwinger exponent is indeed linear in inverse field (πE_crit/E), not (c/v)², so the analogy is an ad hoc exponent as charged. |
| Mo5 | **CONFIRMED** (spot check) | At r = ξ: exact e^(−1/4) = 0.7788 vs linear 0.750 — relative disagreement in δρ = 11.5% ("12%" ✓); the "<3%" integrated claim is indeed nowhere computed in the document. |

Verification-pass side results: KE-only table independently re-solved (0.6063/0.5569/0.5152/0.4803/0.4487/0.3980 MeV at 500–800) — matches both the document and the review's "Verified Sound" list; compression ratio X = 4.42 (600 MeV) / 4.87 (630 MeV) ✓; core volume 373.9–412.2 fm³ ✓; ring energy f·m_e = 0.0255–0.0715 MeV ✓.

## Critical Findings

### C1. Headline window m_A ≈ 628–689 MeV violates the document's own self-consistency premise; correct treatment gives 616–644 MeV
- **Location:** Abstract (lines 30–34), §3.2 "Full Prediction with Energy Conservation" (lines 345–389), boxed Eq. result (lines 377–383), §5.1 (lines 524–525).
- **Claim:** With net correction (1 − 0.017 + f_core), the prediction "matches 0.511 MeV exactly for m_A ≈ 628–689 MeV." The table (lines 361–371) takes the KE-only solution at each m_A (0.495, 0.480, 0.468, 0.455 MeV) and multiplies by (1 + net) to get 0.511.
- **Why wrong:** The KE-only value is obtained by solving Eq. (self-consistent-explicit) with r_loop = ℏ/(m_e c) evaluated at the *uncorrected* mass. After multiplying by 1.033–1.123, the resulting m_e = 0.511 MeV implies a loop radius 3–12% smaller than the one used to compute the KE — the boxed premise r_loop = ℏ/(m_e c) (line 289) is broken. The correction must be applied *inside* the self-consistency loop: m_e² = (1 + f_core − 0.017)·(π²ρ_Aℏ³/2m_A²c³)·[ln(8√2 m_A/m_e) − ½].
- **Recomputation:** Outside-loop method reproduces the document exactly (0.4946×1.033 = 0.5109 at 628; 0.4552×1.123 = 0.5112 at 689). Self-consistent method gives 0.511 MeV at m_A = 616 (f = 5%) and 644 (f = 14%) — precisely the window Paper 7(a) now publishes (7(a) lines 438–441, 451; KE-only 0.503 and 0.484 there also verified). The 12–45 MeV shift is larger than the window's half-width, so the headline numbers are wrong, not merely imprecise.
- **Fix direction:** Replace the §3.2 table and all "628–689" occurrences (abstract, boxed result, §5.1) with the self-consistent 616–644 values, or retire the document in favor of Paper 7(a) with a superseded-by note.

### C2. f_core = 5–14% premise contradicts the current series' Coulomb constraint f_core ≈ 0.18–0.26, which breaks the document's mass window and its structural conclusions
- **Location:** Abstract (lines 31–34), §2.4 (lines 172–174, 189), Eq. (me-total) (lines 264–272, 284–286), §3.2 table, §3.3 (lines 401–410), §4.1 (lines 439–442), §5.1 (lines 528–531).
- **Claim:** The core energy fraction is 5–14% of E_KE; the ring carries 0.03–0.07 MeV; the ring density is "well below ρ_A — the core is sparsely filled, not compressed."
- **Why wrong (vs. current series):** Paper 7(a) post-720541c derives from the Coulomb/fine-structure constraint (7(a) line 913: α⁻¹ = 4π[ln(8√2 m_A/m_e) − ½](1 + f_core − 0.017)) that f_core ≈ 0.18–0.26 (7(a) lines 945, 1018, 1235) — entirely disjoint from this document's 0.05–0.14. Every downstream number here inherits the stale range.
- **Recomputation:** With f_core = 0.18–0.26 (net +16.3% to +24.3%): self-consistent best-fit m_A = 656–679 MeV (this document's outside-loop method would give 717–772 MeV) — outside both this document's 628–689 claim and 7(a)'s 616–644 zone (this is the known f_core-reconciliation tension from the Coulomb review). Ring energy becomes 0.09–0.13 MeV; at the correspondingly shifted best-fit m_A = 656–679 the core volume is ≈ 322–345 fm³ and the ring density becomes 0.95–1.47 ρ_A — i.e., at or above ambient, falsifying "well below ρ_A" and "sparsely filled." Even at the document's own upper end f = 0.14 (its own self-consistent best fit m_A = 644) the ring density is 0.71 ρ_A, which is not "well below." *(Revised 2026-07-07 by verification pass: the original figures "0.84–1.21 ρ_A in ≈ 375–410 fm³" and "0.65 ρ_A at f = 0.14" paired the new f_core with core volumes evaluated at the stale m_A ≈ 600–616; pairing each f_core with its own shifted best-fit m_A gives the values above. The structural conclusion is unchanged and in fact strengthened.)*
- **Fix direction:** Either update to f_core = 0.18–0.26 throughout and redo §§3.2–4.1 (accepting the m_A tension, which the series must resolve anyway), or mark the document as predating the Coulomb tightening.

## Major Findings

### M1. The energy constant −1/2 is not the Donnelly ring-energy constant; it is the hollow-core *translational velocity* constant
- **Location:** Eq. (me-total) line 267, Eq. (self-consistent) lines 307, 313; §2.3 header claim "The Donnelly formula computes only the kinetic energy…" (lines 167–169). Same convention appears series-wide (Paper 7 lines 63, 802ff; 7(a) line 93; Papers 1/4 α⁻¹ formulas), so this is inherited, but this document is where the formula is explicitly attributed to Donnelly.
- **Claim:** E = ½ρ_Aκ²R[ln(8R/a) − ½] is "the Donnelly formula" for ring kinetic energy.
- **Why wrong:** In Donnelly (Quantized Vortices in Helium II, 1991) and the classical literature, the vortex-ring **energy** constant is −7/4 (solid rotating core), −3/2 or −2 (hollow core — convention-dependent, see note), or −1.615 (GP core, Roberts & Grant 1971). The constant −½ appears in the ring **velocity** formula U = (κ/4πR)[ln(8R/a) − ½] (hollow core; −¼ solid, −0.615 GP). Using −½ in the energy overstates E_KE by (1.0–1.5)/ln ≈ 11–17% relative to the standard constants. *(Revised 2026-07-07 by verification pass: the hollow-core energy constant is convention-dependent — −2 for a hollow core at fixed core volume (pure external-flow KE, a ∝ R^(−1/2)) vs −3/2 for a hollow core in pressure equilibrium with fixed core radius; both pair consistently with the velocity bracket −½. The 7(a) review's "−2" and this review's "−3/2" are therefore both correct under their respective conventions. Every standard energy constant remains more negative than −½, so the finding's substance is unaffected.)*
- **Recomputation:** Bare best-fit m_A: 606 MeV with constant ½ (document's "≈600"), but 569 MeV (−3/2), 564 MeV (GP −1.615), 559 MeV (−7/4), 549 MeV (−2). The ≈40–55 MeV shift exceeds the width of the corrected window (616–644), so the constant choice is load-bearing, not cosmetic. Note also a double-counting risk: the GP constant −1.615 already *includes* core-region contributions, so adding f_core on top of the −½ formula stacks a core correction on an energy that is already above the GP total.
- **Fix direction:** Either justify −½ from the theory's logarithmic potential (a first-principles core calculation, acknowledged open at lines 172–174) or adopt a standard constant and rename the formula ("Kelvin/Donnelly-type ring energy with model constant α_c"), propagating the shift into the m_A window. At minimum, stop attributing −½ to Donnelly.

### M2. Direct self-contradiction on whether the electron mass depends on v_perm
- **Location:** §3.3 (lines 395–399: "the total electron mass is fixed by the initial vortex energy… As v_perm decreases (ring grows), more KE converts to ring mass, but m_e stays constant") vs. §5 (lines 476–482: "For v_perm ≪ c, however, the ring mass (scaling as r_eq²) dominates the logarithmic KE decrease, and the total mass grows without bound. This constrains v_perm to be close to c/√2").
- **Why wrong:** Both statements cannot hold. If energy is conserved and m_e equals the initial vortex energy, the total cannot "grow without bound" for any v_perm; conversely, if ring mass ∝ r_eq² is an independent additive contribution, §3.3's partitioning-only claim and the use of r_eq = ξ in the mass equation (line 303) are invalid. §5's argument implicitly uses a non-conserving accounting (DCE mass drawn from vacuum, added on top of KE), which is exactly what §1's "Energy source" paragraph (lines 89–98) disclaims.
- **Fix direction:** Pick one energy accounting. If conservation holds, delete or rewrite the §5 "grows without bound" constraint (the stated motivation for v_perm ≈ c/√2 then evaporates). If not, the mass equation must be re-derived with the log evaluated at r_eq, and m_e acquires v_perm dependence.

### M3. Energy conservation (KE → ring mass, total fixed) is asserted, not derived
- **Location:** §1 "Energy source" (lines 89–98); relied on at lines 348–353 to justify evaluating the log at r_eq = ξ.
- **Claim:** "As the ring grows, the circulation KE decreases by the same amount that the ring mass increases," so m_e equals the initial vortex energy.
- **Why wrong:** With κ topologically fixed and r_loop fixed, the KE released by growing the core from ξ to r_eq is ΔE_KE = ½ρ_Aκ²r_loop·ln(r_eq/ξ) — a specific function of r_eq. The ring's rest-mass gain is set by an entirely different physical input (the DCE conversion rate and duration). No calculation is offered that these are equal; item 2 of the narrative (lines 52–56) even describes DCE as converting *vacuum fluctuations* into bound Aether, an external energy source. The equality is a postulate doing the work of a derivation, and the whole §3.2 "total = initial KE" structure rests on it.
- **Fix direction:** State it as a postulate (conservation ansatz) explicitly, or derive the DCE energy budget; note that Eq. (mring) (m_ring = f_core·m_e) is then a *definition* of f_core, not a prediction.

## Moderate Findings

### Mo1. The −1.7% Bernoulli correction uses a straight-line normalization but is applied to the ring bracket; consistent normalization gives −1.4%
- **Location:** Eq. (ke-correction) lines 232–239; applied multiplicatively in Eq. (me-total) line 269.
- **Detail:** The derivation δE/E ≈ −1/(8 ln(r_loop/ξ)) divides by the straight-vortex KE ∝ ln(r_loop/ξ) ≈ 7.4 (giving 1.68% ✓ as derived). But it is then applied as a factor on the ring energy, whose bracket is ln(8r_loop/ξ) − ½ ≈ 9.0. The same δE against that denominator is −1/(8·9.0) ≈ −1.39%. Effect on m_e is only ~0.15%, but the two-significant-figure "−1.7%" is propagated verbatim into Papers 1, 4, and 7(a) (the (1 + f_core − 0.017) factor), so the normalization should be fixed or stated.

### Mo2. "Matches 0.511 MeV exactly" is a two-parameter fit presented as a prediction
- **Location:** Abstract (lines 32–34), boxed Eq. (result) labeling 0.511 as "(predicted…)", §5.1 (lines 524–525).
- **Detail:** With m_A free inside a 500–850 MeV zone and f_core free inside 5–14%, matching one number exactly is guaranteed by construction (the text even says the residual "is absorbed by m_A," line 388). The honest claim — which §3.1 supports — is that the *bare* self-consistent equation lands within ±20% of m_e across the whole zone and within 1% near 600 MeV, which is nontrivial. "Predicted… exactly" overstates this; the word "predicted" in the boxed result should be "fitted" or "consistent."

### Mo3. The v_perm ≈ c/√π "Schwinger analogy" is an ad hoc exponent, and it is load-bearing
- **Location:** §5, lines 486–496.
- **Detail:** The Schwinger exponent is πE_crit/E (linear in the inverse field), not (c/v)². No argument is given that the DCE creation rate in vortex geometry is exp[−(c/v)²·const], so "exponent ~ π ⇒ v_perm = c/√π" is a dimensional guess dressed as an estimate. Arithmetic is fine (c/√π = 0.564c; r_eq = √(π/2)·ξ = 1.253ξ ✓), and the text does flag v_perm as the key unknown (line 468), but the specific 0.56c number then feeds the "modest expansion" structural picture. Should be labeled a placeholder, not a "natural estimate."

### Mo4. Bernoulli inward-migration argument ignores the classical result that dense material is centrifuged *out* of vortices
- **Location:** §1 item 3 (lines 58–62), §2.2 (lines 138–140).
- **Detail:** The inward pressure-gradient force on bound material holds only if the material has exactly zero azimuthal velocity. In real vortex flows, particles denser than the fluid are ejected outward once drag imparts any co-rotation (preferential concentration: bubbles collect in cores, heavy particles are expelled). Bound Aether at up to ~5ρ_A (the document's own extreme case, §4.1) is denser than the medium. The model needs a stated reason the bound phase cannot be spun up (e.g., zero mutual friction with the condensate); currently the parenthetical "not participating in superfluid flow" carries the whole mechanism.

### Mo5. Linearized density deficit is pushed to the edge of its validity, and the "<3%" exact-vs-linear claim is unverified
- **Location:** Lines 209–210 (−25% at r = ξ), 244–249.
- **Detail:** At r = ξ the exact form gives ρ/ρ_A = e^(−1/4) = 0.779 vs. linear 0.750 — a 12% relative disagreement in δρ exactly where the integrand of the KE correction peaks (the ∫v⁴ integral is dominated by r ≈ ξ). The claim that the *integrated* correction differs by "less than 3%" between forms is plausible but is asserted without the integral being shown; given Mo1, the compounded uncertainty on the −1.7% figure is larger than its quoted precision.

## Minor Findings

- **Mi1 (line 511):** "the ring density α" — α is never defined in this document (stale reference to an earlier draft's parameter; also collides with the fine-structure α used series-wide). The sentence's parameter list should read m_A, ρ_A, c, f_core.
- **Mi2 (lines 200–201):** Citation of "fixes.txt, Fix 4.1" — an internal working-notes file — inside a quasi-formal derivation. Replace with the actual Paper 2/4 result or remove.
- **Mi3 (lines 245–246):** "free-fall dynamics ensure Δρ = 0 exactly (Paper 2)" — the gravitational-inflow/free-fall result belongs to Paper 3 (gravity); Paper 2 covers dynamic compression of moving objects. Check the intended cross-reference.
- **Mi4 (lines 544–550):** Taxonomy calls the electron core a "closed tube of gently compressed Aether" with compression "≪1 to ~5" — a compression ratio below 1 is rarefaction, not compression; wording contradicts §4.1's "sparsely filled, not compressed" (and see C2: with current f_core the density is ~ρ_A or above, changing the taxonomy entry).
- **Mi5 (lines 253–256):** "higher-order terms are O(v⁴/c⁴) ~ 0.4%" — recomputation of the next term in the exponential expansion integrated over the profile gives ~0.1–0.2%; 0.4% is the right order but the quoted value is not reproducible from any shown calculation.
- **Mi6 (lines 570–576):** Open Question 4 calls charge origin "an acknowledged gap in Paper 4." Post-720541c, the series claims a spin-channel Coulomb derivation (q₀ = 2πr_loop, K_φ = ρℏ²/4m_A²) in Papers 4/7(a); the "gap" framing is stale (see Staleness section).

## Staleness vs Current Series Numbers

The document (dated April 2026) predates both the Paper 7(a) self-consistency fix and the 2026-07-07 spin-channel Coulomb revision (commit 720541c). Specific stale items:

| Item | This document | Current series (7(a), post-720541c) |
|---|---|---|
| Corrected best-fit m_A | 628–689 MeV (abstract, §3.2, §5.1) | 616–644 MeV (7(a) lines 56, 438–441, 451, 641) |
| f_core | 0.05–0.14 throughout | Coulomb constraint requires ≈ 0.18–0.26 (7(a) lines 945, 1018, 1235); 7(a) explicitly flags the tension with the rough 5–14% estimate |
| KE-only values in full-prediction table | 0.495 / 0.480 / 0.468 / 0.455 at 628/649/669/689 | 0.503 / … / 0.484 at 616/…/644 |
| Charge origin | "acknowledged gap in Paper 4" (Open Q4) | Spin-channel Coulomb derivation claimed complete except winding-pump postulate; q₀ = 2πr_loop = λ_C |
| Ring density conclusion | "well below ρ_A… sparsely filled" | With f_core 0.18–0.26 at the shifted best-fit m_A: 0.95–1.47 ρ_A (recomputed; corrected 2026-07-07) |
| Convergence zone quoted | 500–850 MeV | Series still quotes this zone, but 7(a)'s working window is 616–644; the Coulomb-implied 656–679 sits outside it (open tension, tracked in the Coulomb review) |

The document is labeled "Working Document" (title page) but carries no pointer to Paper 7(a), which now contains revised versions of §§2–5 nearly verbatim (7(a) lines 351–460 mirror this document's §§2.6–3.3 with corrected numbers). Recommend a header note: "Superseded by Paper 7(a) §§4–6; retained for historical record" — otherwise the two documents present conflicting headline windows for the same calculation.

## Verified Sound

All recomputed with ℏ = 1.054571817e-34, c = 2.99792458e8, ρ_A = 5×10¹¹ kg/m³, 1 MeV/c² = 1.78266192e-30 kg:

- **v(ξ) = c/√2** (Eq. v-healing): κ_e/(2πξ) with κ_e = πℏ/m_A, ξ = ℏ/(√2 m_A c) gives exactly c/√2. ✓
- **Bernoulli pressure** (Eq. bernoulli): ½ρv² = ρκ²/(8π²r²). ✓
- **Density-deficit table** (lines 215–224): −25.0% / −11.1% / −6.25% / −1.0% at r/ξ = 1, 1.5, 2, 5; v/c = 0.707/0.471/0.354/0.141. All ✓
- **Exact compressible Bernoulli** ρ = ρ_A e^(−v²/2c²) is the correct integral of ∫dP/ρ + v²/2 = const for P with constant K_A (dP = c²dρ). ✓
- **1/8 factor** (line 239): κ_e²/(16π²c²ξ²) = ½·v(ξ)²/c² = 1/8. ✓ The δE/E = −1/(8 ln(r_loop/ξ)) integral itself is correct (verified analytically; ∫v⁴ r dr dominated at ξ) — only its normalization when applied to the ring bracket is off (Mo1).
- **Self-consistent equation algebra** (Eq. 306 → 313): substitution of κ_e = πℏ/m_A, r_loop = ℏ/(m_e c), r_eq = ξ gives m_e² = π²ρ_Aℏ³/(2m_A²c³)·[ln(8√2 m_A/m_e) − ½] exactly. ✓
- **KE-only table** (lines 321–334): all six rows reproduced — m_e = 0.606/0.557/0.515/0.480/0.449/0.398 MeV; ξ = 0.279/0.254/0.233/0.215/0.199/0.174 fm; r_loop = 325/354/383/411/440/496 fm; deviations +19/+9/+1/−6/−12/−22%. All ✓ to quoted precision.
- **Full-prediction table** (lines 361–371) is internally consistent *given its (flawed, see C1) outside-loop method*: 0.4946×1.033 = 0.511, …, 0.4552×1.123 = 0.511. ✓ as arithmetic.
- **Compression ratio** (Eq. compression): X = m_e/(ρ_A·2π²r_loop ξ²) = 4.42 (m_A = 600) to 4.87 (630). ✓; core volume 375–412 fm³ ✓ ("300–400" slightly low at the 600 MeV end); 2πr_loop = 2426 fm ≈ 2400 fm ✓; ring energy f·m_e = 0.026–0.072 MeV ✓ ("0.03–0.07").
- **Threshold arithmetic:** c/√π = 0.564c ✓; r_eq = ξ·(c/√2)/(c/√π) = √(π/2)·ξ = 1.253ξ ≈ "1.26ξ" ✓.
- **Exploratory labeling:** title page says "Working Document"; §6 lists honest open questions (v_perm, form factor at r_loop ~ 400 fm vs 10⁻¹⁸ m scattering limits, formation conditions). ✓

## Cross-Paper Dependencies

- **Paper 7(a)** (`TeX/7(a) - Bound Core Electron Model.tex`): supersedes this document; contains the corrected self-consistent tables (616–644 MeV) and the Coulomb-derived f_core = 0.18–0.26. C1 and C2 are resolved/relocated there, but 7(a) inherits M1 (the −½ constant, line 93) and Mo1 (the −0.017 figure, line 913).
- **Paper 7** (`TeX/7 - Quantum Mechanics.tex`, lines 63, 802–883, 1178, 1413, 1617): source of the [ln(8r_loop/ξ) − ½] energy formula — M1 originates here.
- **Papers 1 and 4** (α⁻¹ = 4π[ln(8√2 m_A/m_e) − ½](1 + f_core − 0.017); Paper 1 line 275, Paper 4 lines 1000/1077/1184): both M1 (the −½) and Mo1 (the −0.017) propagate into the fine-structure relation; any fix to the ring-energy constant or Bernoulli normalization must be applied series-wide.
- **Paper 3** (gravity): the transient-binding/gravity claim (lines 73–77, 455) and the Δρ = 0 free-fall contrast (Mi3) depend on Paper 3's DCE-asymmetry mechanism.
- **Paper 5** (strong force): the 7×10⁷ QCD-bridge compression used in the taxonomy comparison (lines 548–549) is Paper 5's number and is quoted consistently.
- **Coulomb review** (`reviews/` + memory): the f_core reconciliation direction (C2 here) is the same tension flagged as critical in the June 2026 Coulomb derivation review; resolving it will move either the 616–644 window or the 0.18–0.26 constraint, and this document's numbers should be updated only after that resolution.
