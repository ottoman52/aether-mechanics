# Paper 2 — Relativity — Accuracy Review

Reviewed: 2026-07-07 (post commit 720541c)
File: `TeX/2 - Relativity.tex` (906 lines). Line numbers below refer to this file as of this review.
Scope: accuracy audit of mathematics, numerics, experimental contact points, and internal consistency, taking the framework's premises as given. Report-only; no TeX edited.

## Summary

**Counts: 1 Critical, 4 Major, 8 Moderate, 6 Minor.** *(Post-verification 2026-07-07: counts unchanged — C1, M2, M3, M4 confirmed; M1 revised in part (a) but remains Major; no finding refuted.)*

The paper's core kinematic machinery remains sound: the interferometer arithmetic, the Bernoulli free-fall proof of ρ = ρ₀, the (γ−1)mc² work integral, the Fresnel drag algebra, and the Sagnac/aberration/dispersion formulas all check out, and every recomputable number (3.5×10⁻⁴⁵, n² ratios, 20.5″, ξ range, K_A range) is arithmetically correct. However, the single Critical finding from the June review is unchanged: the E = mc² derivation in §1.5 still rests on "½K_A at unit strain" plus equipartition, both of which are invalid at unit strain under the paper's own logarithmic equation of state (exact work is 0.153 K_A, recomputed below); a verified exact replacement (∫K_A ln(ρ/ρ₀) dρ/ρ² = K_A/ρ₀ = c², unique to the log EOS) exists but has not been adopted. All four Majors also survive verification (M1 with part (a) revised): the linearity-constraint section contradicts the paper's own compression numbers and presents a theoretical estimate as 45-decimal-place confirmation; the abstract's "five experiments historically regarded as having disproved aether" misstates the history of Sagnac and Fizeau (and is contradicted by the paper's own §2.3 and Sagnac bibliography title); the "experimental exactness at 6:1 density ratio (diamond)" claim exceeds what drag experiments ever tested; and the 10⁻⁸-precision-across-the-full-velocity-range claim conflates precision with range and its load-bearing experiments remain uncited. Commit 720541c's only substantive change to this paper is the reworded E/B item (§4 item 1), which resolves the old E/B-mixing wording; the stale "Paper 7, Section 6.2" reference was *not* among the fixed cross-refs and is still wrong.

## Verification Pass (2026-07-07)

Adversarial re-check attempting to refute the Critical and every Major finding, plus six Moderates, against the TeX read in ±40-line context. All arithmetic independently recomputed (PowerShell); the reviewer's own history and precision-literature claims checked against the record. **Result: no finding refuted; M1 revised in part (a); all other checked findings confirmed. No reviewer arithmetic errors found.**

| Finding | Verdict | Note |
|---|---|---|
| C1 (½K_A unit-strain E = mc²) | **CONFIRMED** | Integrals re-verified both numerically (Simpson) and analytically (antiderivative −ln u/u − 1/u): ∫₁² ln u/u² du = 0.153426; ∫₁^∞ ln u/u² du = 1 exactly; truncation at u = 2000 gives 0.99570 (matches review). As-written total 2×0.1534 ≈ 0.31 mc² confirmed. Checked for hedging: §1.5 presents the step as exact — "(at unit strain)" is a bare parenthetical, the equalities are unqualified, and the section closes "This is the standard energy–mass relation for compression waves in an elastic medium" (lines 299–301); the Math Summary (lines 748–751) repeats it as fact. The "invalid derivation" characterization stands; no downgrade to "estimate presented as derivation" is warranted because the paper never signals an estimate. |
| M1 (linearity constraint) | **REVISED** (part a); parts (b), (c) confirmed | The review's quotation elided a load-bearing qualifier: the paper's sentence is "The largest perturbation **from the electron's own gravitational field** occurs at its Compton wavelength" (lines 787–789) — it does *not* claim electron self-gravity is the largest perturbation from all particle interactions. The internal contradiction is real but attaches to the section's opening sentence ("all density perturbations from known particle interactions are small compared to ρ_A", lines 786–787) and its closing claim that deviations arise "only at compressions approaching δρ/ρ ~ 1, far beyond current experimental reach" (lines 801–803): by the paper's own numbers, the 0.9994c muon it cites gives stagnation compression 0.4994 (Paper 7 §4.5, its lines 895–909), diamond gives n²−1 = 4.8564, and Paper 5 bridges reach ~10⁷–10⁸ — i.e. δρ/ρ ~ 1 is inside, not far beyond, the paper's own claimed experimental contact points. Parts (b) and (c) verified verbatim: "confirms the Lorentz factor to 45 decimal places" is at line 799; the section's v_esc²/c² = 2Gm_e/(λ̄_C c²) is the density figure the paper's own footnote (lines 194–203) declares "unphysical" (hydrostatic max GM/rc², free-fall 0). Note the factor-2 choice is *conservative* for the ≪1 conclusion — the inconsistency, not the smallness verdict, is the defect. Arithmetic re-verified: 2Gm_e/(λ̄_C c²) = 3.504×10⁻⁴⁵; 0.9994²/2 = 0.49940; 2.42²−1 = 4.8564. Severity unchanged (Major). |
| M2 (five-experiments framing) | **CONFIRMED** | Abstract wording verified verbatim (lines 52–56). The paper's own Sagnac bibliography entry (lines 871–874) literally titles the 1913 paper "L'éther lumineux démontré par l'effet du vent relatif d'éther…" — aether *demonstrated* — and §2.3 (line 426) calls the effect "more naturally explained by a medium theory." History checks: Fizeau 1851 confirmed Fresnel's partial-drag *aether* coefficient and was read for half a century as support for Fresnel/Lorentz stationary-aether theories; Bradley aberration constrained fully-dragged aether models but was compatible with stationary aether. Only MM and KT functioned historically as evidence against aether. Double internal contradiction confirmed. |
| M3 (diamond 6:1 "experimental exactness") | **CONFIRMED** | Wording verified at all four cited locations (lines 629–634, 519–527, 560–563, 721–722). No Fresnel-drag experiment has ever used diamond; the tested record is water (Fizeau 1851 ~15%, Michelson–Morley 1886, Zeeman 1914–15) and Zeeman's quartz/flint-glass rods (n² ≲ 3, ~percent-level). "Three orders of magnitude beyond the velocity-based experiments" fails on the paper's own numbers: the paper's summary bullet (lines 560–563) labels the velocity perturbations "of order v²/c²", which at its own cited 0.9994c is order unity — diamond's 4.86 is then less than one order beyond, not three. |
| M4 (10⁻⁸ precision across range) | **CONFIRMED** | Wording verified (lines 55–56, 593–598, 719–720); §4 item 2 carries \cite{ashby2003} and \cite{kundig1963} only — the muon ring and all Ives–Stilwell-type experiments are uncited. Literature: Reinhardt et al. 2007 \|α̂\| ≤ 8.4×10⁻⁸ at β ≈ 0.03–0.064; Botermann et al. 2014, 2.3×10⁻⁹ at β = 0.338; Bailey et al. 1977 ~10⁻³ at 0.9994c. GPS recomputed: v = √(GM_⊕/a) with a = 26 560 km gives 3.874 km/s → β = 1.29×10⁻⁵, an order above the claimed 10⁻⁶c (the Kündig/Mössbauer rotor at ~300 m/s, β ≈ 1.0×10⁻⁶, is the genuine 10⁻⁶ anchor — so the range endpoint is salvageable but the GPS label is wrong, as the review states). Precision-vs-range conflation confirmed. |
| Mo2 (Kündig contested) | **CONFIRMED** (spot check) | Kholmetskii et al. 2008 reanalysis (k = 0.596 ± 0.006 vs expected 0.5, data-processing error in the original) is real and unrebutted in the paper; \cite{kundig1963} appears unqualified at line 594. |
| Mo3 (stale "Paper 7 §6.2") | **CONFIRMED** (spot check) | Re-derived Paper 7's numbering from its section list: §4 = "Constraints from Quantum Superfluid Structure" (line 649); "Vortex Geometry and Length Contraction" is its 5th subsection (line 857) = §4.5, containing the δρ/ρ ≈ v²/(2c²) Bernoulli treatment (lines 895–902). Paper 7's §6 ("Experimental Support") has no subsections at all, so "Section 6.2" cannot resolve. |
| Mo5 (Sagnac overclaim vs SR) | **CONFIRMED** (spot check) | Quotes verified (lines 426, 439–441). SR derives Δt = 4Aω/c² for the rotating interferometer (rotation is absolute in SR; ring-laser gyros are engineered on SR/GR analyses), so the effect has zero discriminating power. One nit *in the review itself*: the finding says SR predicts the formula "exactly" while its own Verified Sound entry correctly says "to first order" — the latter is the precise statement; immaterial to the finding. |
| Mo6 (Airy water telescope) | **CONFIRMED** (spot check) | §2.4 (lines 454–457) gives precisely the tube-transit account whose naive form Airy's 1871 water-filled telescope falsified; the paper nowhere mentions Airy, and its own §2.5 Fresnel coefficient (the standard rescue) is never connected to aberration. |
| Mo7 (drag-velocity assumption) | **CONFIRMED** (spot check) | §2.5 lines 501–513: the dragged density *fraction* f is equated to the *velocity-addition* fraction with no wave-dynamical step; no such derivation exists elsewhere in the paper. |
| Mo8 (grav. length-contraction wording) | **CONFIRMED** (spot check) | Lines 120–126 verified: the PG flat-slice rationale precedes it, but the closing sentence "Gravitational length contraction has no experimental confirmation" is an unqualified experimental claim; Cassini/VLBI γ_PPN = 1 ± 2.3×10⁻⁵ measures the spatial-metric content in standard slicing. Moderate severity (contestable wording, not outright error) is the right level. |

## Critical Findings

### C1 — §1.5 E = mc²: "½K_A at unit strain" is invalid under the paper's own logarithmic EOS — STILL PRESENT
- **Location:** §1.5, lines 287–297 (elastic-energy bullet lines 288–292; equipartition bullet lines 293–295); echoed in the Mathematical Summary, lines 744–752.
- **Claim as written:** "the energy stored per unit volume displaced in a medium of bulk modulus K_A is ½K_A (at unit strain). For volume V = m/ρ_A: E_p = ½K_A(m/ρ_A) = ½mc²," with the kinetic half supplied by equipartition, totaling E = mc².
- **Why wrong:** ½Kε² is the *linear* (small-strain) elastic energy density; evaluating it at ε = 1 is far outside its validity. The paper's own EOS (Eq. at lines 705–708, P = K_A ln(ρ/ρ₀)) gives the exact compression work per unit mass to δρ/ρ = 1 (ρ → 2ρ₀) as W/m = (K_A/ρ₀)∫₁² ln u/u² du = **0.1534 K_A/ρ₀**, not 0.5 K_A/ρ₀ (numerically re-verified this review: ∫₁² ln u/u² du = 0.15343). Equipartition of kinetic and elastic energy likewise holds only for small-amplitude progressive waves, not at unit strain. The two errors do not cancel; the derivation as written yields ≈0.31 mc², not mc².
- **Fix direction:** Replace with the exact log-EOS displacement integral, which this review re-verified: E/m = ∫_{ρ₀}^{∞} K_A ln(ρ/ρ₀) dρ/ρ² = K_A/ρ₀ = c² **exactly** (numerical check: ∫₁^∞ ln u/u² du → 1.000; truncation at u = 2000 gives 0.9957, converging to 1). This result is unique to the logarithmic EOS — it turns the invalid step into a genuine selling point. The parallel wording in the Mathematical Summary (lines 749–751, "c² = K_A/ρ_A is the medium's elastic energy per unit density") should be updated to match, as should any copy in Paper 1's mathematical summary.

## Major Findings

### M1 — §6.4 Linearity Constraint: internally contradicted, prediction presented as confirmation, and a factor-2 inconsistency — STILL PRESENT

*(Revised 2026-07-07 by verification pass: the original part (a) rested on an ellipsis-truncated quote. The paper's full sentence is "The largest perturbation **from the electron's own gravitational field** occurs at its Compton wavelength" (lines 787–789) — it restricts itself to gravitational self-perturbation and does not claim electron gravity is the largest perturbation from all particle interactions. Part (a) is re-targeted below at the sentences that ARE contradicted; parts (b) and (c) confirmed as written. Severity unchanged.)*

- **Location:** Linearity Constraint subsection, lines 783–803 (equation lines 792–797; "45 decimal places" line 799).
- **Claims as written:** (a) "The theory requires that all density perturbations from known particle interactions are small compared to ρ_A" (lines 786–787) and "Deviations from exact Lorentz symmetry are predicted only at compressions approaching δρ/ρ_A ~ 1, far beyond current experimental reach" (lines 801–803); (b) "This extraordinary smallness confirms the Lorentz factor to 45 decimal places"; (c) δρ/ρ_A = v_esc²/c² = 2Gm_e/(λ̄_C c²).
- **Why wrong:**
  - (a) The paper itself contains vastly larger perturbations, so the universal-smallness claim and the "far beyond current experimental reach" claim are both internally contradicted: dynamic compression δρ/ρ_A ≈ v²/(2c²) (line 129) reaches **0.4994** at the 0.9994c muon-ring velocity the paper cites (recomputed) — i.e. δρ/ρ ~ 1 is *within* the paper's own claimed experimental contact points, not far beyond them; refractive media reach δρ/ρ_A = n²−1 ≈ **4.86** for diamond (line 531); and Paper 5's compressed bridges reach ~10⁷–10⁸. The section's 3.5×10⁻⁴⁵ figure bounds only the electron's gravitational self-perturbation, yet its conclusions are drawn for "all accessible energies."
  - (b) 3.5×10⁻⁴⁵ is a *theoretical estimate of a correction term*, not an experimental confirmation. Actual experimental bounds on Lorentz-factor deviations are ~10⁻⁸ (see M4). "Confirms … to 45 decimal places" is prediction-as-confirmation.
  - (c) Factor-2 wobble: the section uses δρ/ρ = v_esc²/c² = 2GM/(rc²), but the paper's own footnote (lines 194–203) establishes that the *maximum* static density perturbation (hydrostatic) is GM/(rc²) — half this — and that the free-fall inflow value is exactly zero (lines 213–222). The section quietly uses the density-based figure the footnote declares "unphysical." (Verification note: the factor-2 choice is *conservative* for the ≪1 conclusion — the defect is the internal inconsistency, not the smallness verdict.)
- **Evidence/recomputation:** 2Gm_e/(λ̄_C c²) = 3.504×10⁻⁴⁵ with CODATA values (arithmetic itself is correct); 0.9994²/2 = 0.4994; 2.42² − 1 = 4.856.
- **Fix direction:** Restrict the claim to *gravitational* self-perturbations of elementary particles; state explicitly that vortex cores, refractive media, and bridges are large-compression regimes handled by the exact log EOS rather than the linear approximation; replace "confirms to 45 decimal places" with "predicts deviations at the 10⁻⁴⁵ level, far below the current 10⁻⁸ bounds"; reconcile the 2GM/rc² vs GM/rc² choice with the §1.3 footnote.

### M2 — Abstract/§2 framing: Sagnac and Fizeau were not "historically regarded as having disproved aether" — STILL PRESENT
- **Location:** Abstract lines 52–55; §2 intro lines 366–368; contradicted internally by §2.3 (lines 425–441) and by the Sagnac bibliography title (lines 871–874).
- **Claim as written:** "The five classical experiments historically regarded as having disproved aether theories — Michelson–Morley, Kennedy–Thorndike, Sagnac, stellar aberration, and Fizeau — are all quantitatively predicted by the model."
- **Why wrong:** Only MM and KT were regarded as evidence against (static) aether. Sagnac himself titled his 1913 paper "L'éther lumineux démontré…" ("the luminiferous ether *demonstrated*") — the very title quoted in this paper's own bibliography — and the paper's own §2.3 calls the effect "a positive detection of motion … more naturally explained by a medium theory." Fizeau's result confirmed Fresnel's partial-drag *aether* coefficient and was historically read as pro-aether (it motivated Fresnel/Lorentz aether theories). Stellar aberration was a *constraint* on drag models, not a disproof of aether per se. The abstract's framing is contradicted twice within the same document.
- **Fix direction:** Reword to something like "the five classical experiments that historically constrained aether theories" or split them: two null results explained (MM, KT), three positive results predicted (Sagnac, aberration, Fizeau).

### M3 — "Experimental exactness" of Fresnel drag at density ratios up to 6:1 (diamond) overstates the experimental record — STILL PRESENT
- **Location:** §4 item 8, lines 629–634 ("experimental exactness of 1 − 1/n² … confirms K_A invariance at density ratios up to n² ≈ 6 (for diamond), extending the linearity confirmation by three orders of magnitude beyond the velocity-based experiments"); also §2.5 lines 519–527, summary bullet lines 560–563, and EOS bullet lines 721–722 ("exact across materials with density ratios up to ~6:1").
- **Why wrong:** Fresnel-drag experiments have never been performed in diamond. The tested media are water (Fizeau 1851; Michelson–Morley 1886; Zeeman 1914–15, n ≈ 1.33, n² ≈ 1.78), air (Fizeau — null), and Zeeman's quartz and flint-glass rods (1919–22, n up to ≈ 1.7, n² ≈ 3). Measurement precision was percent-level (Fizeau ~15%; Zeeman ~2%), not "exact." The 6:1 figure comes from diamond's refractive index alone, which tests the *n² density postulate* only if one already assumes the framework — no drag measurement backs it. The "three orders of magnitude beyond the velocity-based experiments" comparison is also unsupported: on the paper's own formula the velocity experiments at 0.9994c probe δρ/ρ ≈ 0.5, which is *not* three orders of magnitude below n² − 1 ≈ 2 (flint glass, the actual max tested) or even 4.86 (diamond, untested).
- **Fix direction:** Cap the experimentally confirmed range at n² ≈ 3 (Zeeman's flint glass), state the percent-level precision honestly, and present diamond as a *prediction* (an untested extrapolation of K_A invariance), which would actually be a testable-prediction asset for §5.

### M4 — "Confirmed to 10⁻⁸ precision across 10⁻⁶c to 0.9994c" conflates precision with range; load-bearing citations missing — STILL PRESENT
- **Location:** Abstract lines 55–56; §4 item 2, lines 593–598; EOS bullet lines 719–720.
- **Claim as written:** γ "confirmed across velocities from 10⁻⁶c (GPS, Mössbauer) to 0.9994c (CERN muon storage ring), with no higher-order corrections (v⁴/c⁴ terms) detected to 10⁻⁸ precision."
- **Why wrong:**
  - The 10⁻⁸ bound (|α̂| ≲ 8.4×10⁻⁸) comes from modern Ives–Stilwell-type experiments at β ≈ 0.03–0.34 (Reinhardt et al. 2007; Botermann et al. 2014) — *neither is cited anywhere in the paper*.
  - At 0.9994c the muon-ring test (Bailey et al. 1977 — also uncited; line 595 names "CERN muon storage ring" with no \cite) confirms time dilation to ~10⁻³, not 10⁻⁸.
  - GPS satellites move at ~3.87 km/s → β = 1.29×10⁻⁵, not 10⁻⁶ (recomputed); and GPS verifies the combined relativistic offset at ~10⁻⁵ fractional level.
  - "No higher-order corrections (v⁴/c⁴ terms) detected" is garbled: γ itself contains v⁴/c⁴ terms that *are* detected; what is bounded is *deviation from* γ.
- **Fix direction:** State "deviations from γ bounded at 10⁻⁸ for β ≤ 0.34 (Ives–Stilwell type) and at 10⁻³ at β = 0.9994 (muon storage ring)"; correct the GPS velocity; add Bailey 1977, Reinhardt 2007, Botermann 2014 to the bibliography.

## Moderate Findings

### Mo1 — Cross-paper photon-speed tension unresolved in this paper — STILL PRESENT
- **Location:** §2.5 lines 485–493 (refraction from c = √(K_A/ρ) with ρ_material = n²ρ_A) and EOS section lines 710–716 ("the speed of sound c_s = √(K_A/ρ) varies with density").
- **Issue:** Paper 2 requires the light-carrying mode's speed to be density-DEPENDENT (that is the entire refraction/Fresnel mechanism), while Paper 5's Lüscher-term match requires a compression-INDEPENDENT c for the same mode inside bridges at δρ/ρ ~ 10⁷, and Paper 7 treats photons as spin-wave (not compression-wave) excitations. Commit 720541c added a "statics vs waves" wiring sentence to Paper 6 but Paper 2 was not reconciled: §1.5 (lines 281–283) still calls light "compression waves," and no sentence here explains which mode refracts. The tension is seeded across the series and this paper is where the density-dependence is asserted.
- **Fix direction:** Add the same mode-taxonomy sentence used in Paper 6: identify which excitation branch light is, and why its speed scales as √(K_A/ρ_eff) in refractive media but is compression-independent in bridges.

### Mo2 — Kündig (1963) cited as clean confirmation; result is contested — STILL PRESENT
- **Location:** §4 item 2 line 594 (\cite{kundig1963}); bibliography lines 835–838.
- **Issue:** Kholmetskii et al. (2008) reanalyzed Kündig's rotor data and found k = 0.596 ± 0.006 instead of the expected 0.5 (a data-processing error in the original), and follow-up Mössbauer rotor experiments remain disputed. Citing Kündig as a precision anchor for the low-velocity end without qualification misrepresents the state of that datum. Sturdier low-β anchors exist (e.g., Chou et al. 2010 optical-clock time dilation at 10 m/s).
- **Fix direction:** Either add a caveat or swap in an uncontested low-velocity reference.

### Mo3 — Stale hardcoded cross-reference: "Paper 7, Section 6.2" — STILL PRESENT (not among 720541c's fixed refs)
- **Location:** Line 130.
- **Issue:** The vortex-level Bernoulli/dynamic-compression treatment in Paper 7 is §4.5 "Vortex Geometry and Length Contraction" (`7 - Quantum Mechanics.tex` line 857, under section 4 at line 649; the δρ/ρ ≈ v²/(2c²) material is at its lines 896–909). Paper 7 has no §6.2 with this content. Verified again this review.
- **Fix direction:** Change to §4.5, or better, use the xr-hyper \ref mechanism already loaded in the preamble (line 15) so it can't go stale.

### Mo4 — p = γmv "not an additional postulate" overclaims — STILL PRESENT
- **Location:** §1.6, lines 330–338.
- **Issue:** The argument — internal clock slows by γ, hence the vortex "responds to force γ times more sluggishly, producing an effective inertia of γm" — is an isotropic-sluggishness argument. But relativistic inertia is anisotropic: transverse acceleration resistance is γm while longitudinal is γ³m. A single "sluggishness factor γ" cannot produce both; the derivation smuggles in the correct p = γmv (from which F = dp/dt gives γ³m longitudinally) without deriving why momentum rather than the force response carries the single γ. The downstream work integral (lines 341–346) is correct *given* p = γmv, so the KE result stands, but the "not a postulate" claim does not.
- **Fix direction:** Either present p = γmv as motivated-but-postulated, or supply the honest derivation (e.g., momentum flux of the vortex's wave constituents, which does give p = γmv).

### Mo5 — Sagnac section overclaims against special relativity — STILL PRESENT
- **Location:** §2.3, lines 426 ("more naturally explained by a medium theory than by special relativity") and 439–441 ("direct evidence that light speed is determined by a local reference---precisely what a medium theory predicts").
- **Issue:** SR predicts Δt = 4Aω/c² exactly (rotation is absolute in SR too; the effect is routinely derived in SR/GR and ring-laser gyros are engineered on that basis). The Sagnac effect therefore has zero discriminating power between SR and the medium theory. "Direct evidence … precisely what a medium theory predicts" invites the reader to score a tie as a win. The formula itself (lines 433–437) is correct.
- **Fix direction:** State that the effect is *equally* predicted by both, and that the medium account is an interpretive economy claim, not an evidential one.

### Mo6 — Stellar aberration: the "telescope tube" account ignores Airy's water-telescope null (1871)
- **Location:** §2.4, lines 454–457 ("tilted … to compensate for Earth's motion during the time light traverses the telescope tube"); summary bullet lines 554–555.
- **Issue:** The naive tube-transit picture predicts that filling the telescope with water (slower light, longer transit) changes the aberration angle by factor n; Airy's 1871 experiment found no change. This was a famous constraint on exactly this style of explanation. The paper's own Fresnel-drag machinery (§2.5) is what rescues the prediction (partial drag in the water cancels the extra tilt) — but the paper never mentions Airy or makes the connection, leaving its aberration account in the historically falsified form. Given that §2.4 explicitly claims to resolve "a long-standing dilemma for aether models," omitting the water-telescope arm of that dilemma is a real gap at a classical-experiment contact point.
- **Fix direction:** Add Airy 1871 and show the drag-coefficient cancellation — it is a genuinely free win for the framework since the Fresnel coefficient is already derived in the next subsection.

### Mo7 — Fresnel drag derivation rests on an unstated wave-speed-addition assumption
- **Location:** §2.5, lines 501–513.
- **Issue:** The algebra Δρ/ρ_material = 1 − 1/n² is correct, but the step from "fraction f of the local density co-moves at v" to "the light speed gains f·v" is asserted, not derived. It implicitly assumes the wave speed adds the *mass-weighted mean* flow velocity of the composite medium — plausible for sound-like waves, but the paper elsewhere (Paper 7) makes light a spin-wave, and even for compression waves the co-moving excess density is bound in matter, not free fluid. The headline "derives naturally" (line 484) claim depends on this hidden bridge.
- **Fix direction:** State the assumption explicitly (drag velocity = density-weighted average flow) and flag its derivation as an open item, or derive it from the two-component wave equation.

### Mo8 — "Gravitational length contraction has no experimental confirmation" is contestable as stated
- **Location:** §1.1, lines 120–126.
- **Issue:** Light deflection (VLBI) and Shapiro delay (Cassini: γ_PPN = 1 ± 2.3×10⁻⁵) measure the spatial part of the metric; in standard (Schwarzschild) slicing, half the deflection comes from spatial curvature. The paper's position is defensible *only* via the slicing argument it gestures at (PG slices are flat; the same observables are reproduced by the flow terms, as its own lensing bullet at lines 566–569 correctly decomposes) — but the flat statement "no experimental confirmation" reads as an experimental claim and will be read as contradicting Cassini. What is true: no experiment distinguishes flat-slice-plus-flow from curved-slice descriptions of the same geometry.
- **Fix direction:** Reword to "gravitational spatial distortion is slicing-dependent; all measurements (deflection, Shapiro delay) are equally consistent with the flat-slice Painlevé–Gullstrand form used here."

## Minor Findings

### Mi1 — Dispersion correction misattributed to Lorentz 1887
- **Location:** §5, lines 649–652 (\cite{lorentz1887}); bibliography lines 847–850.
- **Issue:** The dispersion term f = 1 − 1/n² − (λ/n)(dn/dλ) was derived in Lorentz's 1895 *Versuch einer Theorie der electrischen und optischen Erscheinungen in bewegten Körpern*, not the 1887 Archives néerlandaises paper (which concerns Earth's motion and the MM experiment). The formula itself is quoted correctly (verified sign convention; Zeeman confirmed it 1914–15).
- **Fix direction:** Cite Lorentz 1895 (and optionally Zeeman 1914–1922 for the experimental confirmation).

### Mi2 — Missing bibliography entries for headline precision claims
- **Location:** Line 595 ("CERN muon storage ring" — no cite); §4 item 2 generally.
- **Issue:** Bailey et al. 1977 (Nature 268, 301), Reinhardt et al. 2007 (Nature Physics 3, 861), Botermann et al. 2014 (PRL 113, 120405) carry the paper's quantitative time-dilation claims and are absent. (Same root cause as M4; listed here as the bibliography-level action item.)

### Mi3 — "Helical path" wording in Mathematical Summary inconsistent with the body derivation
- **Location:** Lines 739–740 ("ratio of helical to straight path lengths") and 754–755 ("longer helical path").
- **Issue:** The body (§1.2, lines 146–149) derives γ from a transverse Pythagorean wave path; the helical-path picture is Paper 7's vortex-geometry version (§4.5 there). Same γ, but the summary attributes a derivation this paper never presents.
- **Fix direction:** Either say "longer wave paths (Pythagorean geometry; see Paper 7 §4.5 for the equivalent helical vortex version)" or align wording with §1.2.

### Mi4 — Garbled logic sentence in Kennedy–Thorndike section
- **Location:** §2.2, lines 407–409: "A non-null result would therefore reveal that length contraction is the sole effect of motion through the medium."
- **Issue:** As written it says a positive fringe shift would *reveal* LC-only — but a non-null result would equally be consistent with no contraction at all or partial effects; what it would reveal is the *absence of the compensating time dilation*. The intended logic (LC alone cannot null unequal arms) is stated correctly in the preceding sentence; this sentence should be tightened, e.g. "A non-null result would have shown that time dilation does not accompany length contraction."

### Mi5 — Weber–Kohlrausch attribution overstated
- **Location:** §4 item 2, lines 597–598: "The Weber–Kohlrausch experiment independently confirmed that the c in the electromagnetic force ratio is the same c as the speed of light."
- **Issue:** Weber and Kohlrausch (1856) measured the units ratio (obtaining 4.39×10⁸ m/s = c√2 in Weber's convention) and did *not* identify it with light speed; that identification was made by Kirchhoff (1857) and Maxwell (1861–65). "Confirmed … the same c" also overstates 1856 precision (~a few %). Reword to "measured the electromagnetic units ratio, whose coincidence with the speed of light (noted by Kirchhoff and Maxwell) first connected electromagnetism to light."

### Mi6 — E/B item is qualitative only (post-720541c wording)
- **Location:** §4 item 1, lines 585–591.
- **Issue:** The revised spin-phase wording ("emitted wavefronts are Doppler-tilted by the motion, developing angular structure (B appears)") is consistent with Paper 4's spin-channel framework, but no quantitative check is offered that Doppler-tilting reproduces the actual field-mixing law (B = v×E/c² to first order, γ-factors at higher order). Fine as a plausibility item, but it is listed under "Experimental Support" alongside quantitative entries; consider flagging it as qualitative or moving the derivation burden to Paper 4.

## Prior-Review Reconciliation

| Prior finding (Jun 2026) | Status (2026-07-07) | Notes |
|---|---|---|
| C1: E=mc² via ½K_A at unit strain + equipartition | **Still present** | Lines 287–297 unchanged; exact replacement (K_A/ρ₀ = c²) verified again, not adopted |
| Major: §6.4 "all perturbations small" vs own diamond/compression/bridge numbers | **Still present** | Lines 785–803 (→ M1) |
| Major: "confirms γ to 45 decimal places" prediction-as-confirmation | **Still present** | Line 799 (→ M1b) |
| Major: factor-2 wobble (v_esc²/c² vs footnote's GM/rc² max) | **Still present** | Lines 792–797 vs 194–203 (→ M1c) |
| Major: abstract five-experiments "historically disproved" framing | **Still present** | Lines 52–55 (→ M2) |
| Major: diamond 6:1 "experimental exactness" / "three orders of magnitude" | **Still present** | Lines 629–634 (→ M3) |
| Major: 10⁻⁸ precision/range conflation; Bailey/Reinhardt/Botermann uncited | **Still present** | Lines 55–56, 593–598 (→ M4, Mi2); GPS "10⁻⁶c" also still wrong (actual 1.3×10⁻⁵) |
| Moderate: photon-speed cross-paper tension (P2 vs P5 Lüscher) | **Still present in P2** | Paper 6 got the wiring sentence in 720541c; Paper 2 did not (→ Mo1) |
| Moderate: Kündig 1963 contested (Kholmetskii 2008) | **Still present** | Line 594 (→ Mo2) |
| Moderate: stale "Paper 7 §6.2" hardcoded ref | **Still present** | Line 130; re-verified target is P7 §4.5 (not among 720541c's 4 fixed refs) (→ Mo3) |
| Moderate: p=γmv "not a postulate" overclaim | **Still present** | Lines 330–338 (→ Mo4) |
| E/B mixing item wording | **Superseded/fixed** | 720541c reworded §4 item 1 into spin-phase language; residual qualitative-only caveat noted as Mi6 |
| Verified-sound items (interferometer arithmetic, Bernoulli ρ=ρ₀, work integral, Fresnel algebra, Sagnac/aberration/dispersion) | **Re-verified sound** | See Verified Sound below |

New this review: Mo5 (Sagnac overclaim vs SR), Mo6 (Airy water telescope), Mo7 (drag-velocity assumption), Mo8 (gravitational length-contraction wording), Mi1 (Lorentz 1895 vs 1887), Mi3–Mi5. (The prior review file is not present in the working tree, so its full 8-moderate/6-minor list could not be diffed item-by-item; the table above covers all prior findings supplied for re-verification.)

## Verified Sound

- **MM interferometer arithmetic** (lines 100–111, 391–399): t∥ = (2L/c)/(1−β²), t⊥ = (2L/c)/√(1−β²); with L′ = L/γ, t∥(L′) = t⊥ exactly. Correct.
- **Bernoulli ρ = ρ₀ free-fall proof** (lines 213–222): ½v_in² + Φ = 0 for fall from rest at infinity ⇒ enthalpy terms cancel; EOS-independent claim is correct for barotropic free fall. Footnote's hydrostatic maximum GM/(rc²) also correct for P = K ln(ρ/ρ₀).
- **Gravitational time dilation** (lines 205–211): v_in²/(2c²) = GM/(rc²) matches the weak-field GR result (and the exact velocity-dilation factor √(1−2GM/rc²) reproduces Schwarzschild exactly). Pound–Rebka/GP-A/GPS agreement correctly stated.
- **(γ−1)mc² work integral** (lines 341–346): W = ∫v dp with p = γmv gives (γ−1)mc²; low-v limit ½mv² correct.
- **Fresnel drag algebra** (lines 491–513): given premises, (n²−1)ρ_A/(n²ρ_A) = 1 − 1/n² is exact. Density-ratio numerics correct: 1.33² = 1.77, 1.52² = 2.31, 2.42² = 5.86 (recomputed).
- **Sagnac formula** Δt = 4Aω/c² (lines 433–437): correct to first order.
- **Stellar aberration numeric** (lines 452–456, 554–555): v_orb/c = 20.49″ ≈ 20.5″ (recomputed).
- **Lorentz dispersion correction form** (line 651): f = 1 − 1/n² − (λ/n)(dn/dλ) — correct standard form and sign (attribution issue only, Mi1).
- **Linearity arithmetic** (line 795): 2Gm_e/(λ̄_C c²) = 3.50×10⁻⁴⁵ — arithmetic correct (framing issues are M1).
- **Parameter table self-consistency** (lines 672–695): K_A = ρ_A c² gives 9.0×10²⁷–9.0×10²⁸ ≈ stated 10²⁸–10²⁹; ξ = ħ/(m_A c√2) gives 0.164–0.279 fm for m_A = 850–500 MeV ≈ stated 0.17–0.28 fm (recomputed).
- **Bibliography details for classical experiments** (lines 823–887): Weber–Kohlrausch Ann. Phys. 99 (1856); Kündig Phys. Rev. 129, 2371 (1963); Michelson–Morley Am. J. Sci. 34, 333 (1887); Kennedy–Thorndike Phys. Rev. 42, 400 (1932); Sagnac C.R. 157, 708 (1913); Bradley Phil. Trans. 35, 637 (1728); Fizeau C.R. 33, 349 (1851); Lorentz 1904 Proc. KNAW 6, 809; Ashby Liv. Rev. Rel. 6, 1 (2003); Fresnel Ann. Chim. Phys. 9, 57 (1818) — all verified correct.
- **Wave-equation Lorentz invariance claim** (lines 80–92): correct, and the Lorentz 1904 attribution for the EM equilibrium-contraction theorem is fair.

## Cross-Paper Dependencies

- **Paper 7 §4.5** (vortex geometry, dynamic compression δρ/ρ ≈ v²/2c², helical-path γ): referenced at line 130 with the stale "§6.2" number (Mo3). Paper 7's caveat that v²/2c² is the *stagnation maximum*, not uniform (its lines 908–909), is dropped in P2's line 129 wording.
- **Paper 1 Mathematical Summary**: if it mirrors this paper's E = mc² wording ("elastic energy per unit density"), the C1 fix must propagate there (per series policy, Paper 1 is fixed last).
- **Paper 3**: inflow v_in = √(2GM/r), lensing 4GM/(r₀c²), and ε asymmetry are imported (lines 172–263, 566–569). P2's rhetorical claim "G … measures the strength of the inflow driven by the bind–unbind cycle" (lines 233–235) leans on Paper 3's G ∝ ερ_Aψ² derivation, which the Paper 3 review found phantom/circular — P2 should not present it as established.
- **Paper 5**: bridge compressions ~10⁷–10⁸ directly contradict M1's "all density perturbations small," and the Lüscher-term compression-independent wave speed is the other pole of Mo1's tension.
- **Paper 6**: received the "statics vs waves" wiring sentence in 720541c; the equivalent reconciliation is still needed here (Mo1).
- **Paper 4**: §4 item 1's spin-phase E/B language (post-720541c) defers the quantitative field-mixing law to Paper 4's spin-channel framework (Mi6).
