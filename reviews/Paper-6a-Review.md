# Paper 6(a) — Cooling Feedback Model — Accuracy Review

Reviewed: 2026-07-07 (post commit 720541c)
File: `TeX/6(a) - Cooling Feedback Model.tex` (857 lines). Line numbers below refer to the Read-tool numbering of that file at this commit. First full review of this paper. Report-only; no TeX edited.

## Summary

**4 Critical, 6 Major, 5 Moderate, 7 Minor.** *(Post-verification 2026-07-07: counts unchanged — all 4 Critical and all 6 Major findings, plus all 5 Moderates spot-checked, survived an adversarial verification pass. One sentence of C1 was refined for precision; see Verification Pass below.)*

The paper's arithmetic is clean — every entry of Table 1 (f_n, (H/H0)², S(z)/S(0), T_CMB(z)), the α values, n = ln6/ln2.5 ≈ 1.955, and the Landau-prefactor correction all recompute exactly. The problems are structural. Both headline claims fail under scrutiny: (1) the DESI phantom→quintessence constraint Δ/k_B ≈ 5–6 K is not derivable from the paper's own evolution equation — direct numerical integration of Eq. (7) shows the crossing redshift is set by initial conditions, is nearly independent of Δ, and shifts with Δ in the *opposite* direction to Table 2; moreover the paper misstates the DESI crossing redshift (z* ≳ 1 vs. the actual ≈ 0.4, which Paper 6 itself quotes as ≈ 0.5), so even taking Table 2 at face value the constraint would read Δ ≈ 8 K, dissolving the "CMB within a factor of two" coincidence. (2) The dark-matter-from-varying-G channel is both logically inverted (weaker G in voids adds no attraction inside halos, and warmer galaxy outskirts would get *weaker* gravity — anti-dark-matter) and cosmologically catastrophic as written (ε ∝ T⁻² over cosmic temperature history gives G at recombination ~10⁻⁶ of today's value), and it is flatly contradicted by Paper 6, which computes the same temperature channel to be suppressed by ~10⁻³⁷ and uses constant G. The cooling-feedback ratchet itself also assigns bulk viscosity the opposite dynamical role (braking) to the very bulk-viscous cosmology literature cited as an "exact match" (where ζ *drives* acceleration).

## Verification Pass (2026-07-07)

Adversarial re-check of every Critical and Major finding (cited TeX re-read in ±40-line context, companion passages in Papers 3/6/6(b) re-read at this commit, all arithmetic independently recomputed in PowerShell, C1's ODE re-integrated from scratch with RK4). All findings survived. C1 had one sentence refined for precision (see note below); no finding was refuted.

| ID | Verdict | Note |
|----|---------|------|
| C1 | CONFIRMED (one sentence refined) | Independent RK4 integration reproduces the reviewer's crossings to ~1% (z* = 6.09→6.35 for Δ = 4→12 K at β = 3, p₀ = 0, start z = 10); crossings are IC-set and the weak Δ-trend is *upward* (opposite Table 2) at every β tested over 0.1–3. Likely origin of Table 2 identified (fixed-P static balance) — and it is dynamically inconsistent with Eq. (7). |
| C2 | CONFIRMED | CPL crossing recomputed for all four DESI DR2 dataset combinations: z* = 0.35–0.50, never ≳ 1; the paper's caption/§7.1 explicitly tie "z ≳ 1" to the *crossing*, not to detectability; Table 2 at z* ≈ 0.3–0.5 reads Δ ≈ 8 K, and 8/2.725 = 2.94 ✓. |
| C3 | CONFIRMED | (2.725/3000)² = 8.25×10⁻⁷ ✓; hunted for a bounding/contrast-only caveat — none exists. The handoff-table framing ("once temperature contrasts develop") *presumes* contrast-only response but Eq. (10) is a function of absolute T with the power law fixed globally by 2.5ⁿ = 6; the two cannot both hold, which is the finding. |
| C4 | CONFIRMED | Sign inversion follows from the paper's own §5.3 bullets (lab/rotation-curve/lensing measurements made "near matter, where G = G₀" = G_dense): the failed Newtonian prediction already uses G_dense; weaker G toward voids adds nothing inside halos and reduces gravity in warm outskirts. No caveat found. |
| M1 | CONFIRMED | Standard Eckart bulk-viscous cosmology has Π = −3ζH, i.e., P_eff = P − 3ζH: positive ζ makes pressure more negative and *accelerates* — the cited literature's ζ₀ ~ 10⁶ Pa·s is fitted in that accelerator role, opposite the paper's "braking" role. |
| M2 | CONFIRMED | Paper 6 lines 576–583 verbatim as quoted (temperature channel suppressed by P_th/K_A ~ 10⁻³⁷; "The Friedmann equation below therefore uses constant G"). The parenthetical at Paper 6 lines 584–589 (10⁻⁴³ ≈ ε speculation) does not reconcile the 37-order gap. |
| M3 | CONFIRMED | Recomputed both parameter sets. H₀=70/Ωm=0.3: lookback(z=0.835) = 7.00 Gyr, lookback(z=1.202) = 8.44 Gyr, q=0 at z=0.671 → 6.14 Gyr, "5 Gyr ago" ↔ z ≈ 0.47 (4.82 Gyr). Planck (H₀=67.4/Ωm=0.315): 7.22, 8.69, q=0 at z=0.632 → 6.10 Gyr, z=0.47 → 4.99 Gyr. Gap crossing precedes onset by 0.9–2.6 Gyr; neither epoch is ~5 Gyr ago. |
| M4 | CONFIRMED | 2.5 × 2.725 = 6.81 K > Δ/k_B = 5–6 K; exp(−6/6.81) = 0.41 ✓. Paper 6 §Dark Energy places the dissipating normal fraction and the thermal pressure in the voids, so the void temperature is the operative one for ζ_n. |
| M5 | CONFIRMED | Eq. (1) validity clause (T ≲ Δ/k_B) at line 147; Table 1 z = 5 row has T = 16.4 K ≈ 2.7 Δ/k_B; f_n(∞) = e^2.202 = 9.04 ✓ — the implied bound ρ_n(0)/ρ_A ≤ 0.11 is indeed never stated. |
| M6 | CONFIRMED | Grep of Paper 3 at this commit: ψ appears only at lines 156 and 646, both usages, no definition anywhere; the "Unification of Force Constants" summary (lines 884–891) gives G = ε·k·(geometric and mass factors)/c² — no ρ_A, no ψ — with ε *defined* from the 4.17×10⁴² force ratio. |
| Mo1 | CONFIRMED (spot check) | 5/2.725 = 1.835, 6/2.725 = 2.202 — "within a factor of two" fails at the top of the quoted range; Δ was fitted in §4.2 and re-presented as prediction in §4.4/Prediction 1. |
| Mo2 | CONFIRMED (spot check) | Paper 6 lines 141–152: ζ_n ≈ ρ_Λc²/(9H²t₀) ~ 3×10⁷ Pa·s refined to ~10⁶, explicitly labeled "an observational constraint" derived by requiring the dark-energy budget — so §7.2's "exact match" compares two fits to the same data. |
| Mo3 | CONFIRMED (spot check) | ln6/ln2.5 = 1.9554 ✓; the "pair" argument presupposes per-particle T⁻¹ without justification, exactly as stated. |
| Mo4 | CONFIRMED (spot check) | Standard result: tensor GW damping in a fluid couples to shear viscosity/anisotropic stress; bulk viscosity enters only the trace (expansion) sector. |
| Mo5 | CONFIRMED (spot check) | Grep of 6(a): zero occurrences of "6(b)"/"Hot Matter"; 6(b) lines 653–676 comparison table confirms opposite temperature topologies and quotes the crossing as "z ∼ 0.5–1". |

### C1 verification detail (integration setup and results)

Setup (independent of the reviewer's): Eq. (7) nondimensionalized with p ≡ P_th/(9ζ₀H₀) and N ≡ ln a gives dp/dN = f_n(a)E(a) − βp, where f_n = exp[α(1−a)] (identical to exp[αz/(1+z)]), E = √(0.3a⁻³ + 0.7), α = Δ/(2.725 K). RK4 in N, step ΔN = 5×10⁻⁴; crossing = sign change of dP/dt = f_nE − βp (+ phantom, − quintessence).

Results:
- **Δ scan, β = 3, p₀ = 0 at z = 10:** z* = 6.09, 6.12, 6.16, 6.23, 6.35 for Δ/k_B = 4, 5, 6, 8, 12 K — reproduces the reviewer's values to ~1% and confirms the weak *upward* Δ-trend (Table 2 claims a strong downward trend, 1.5 → 0.1).
- **β dependence (same IC):** β = 1 → z* = 4.17–4.62; β = 0.5 → 3.02–3.60; β = 0.1 → 1.02–1.79. At *every* β over 1.5 decades the Δ-trend is upward, opposite Table 2.
- **Start-point dependence (Δ = 6 K, β = 3, p₀ = 0):** z* = 1.69, 2.98, 6.16, 12.5, 31.4, 693 for start z = 3, 5, 10, 20, 50, 1100 — the crossing sits a fixed number of e-folds (~1/β) after wherever the integration starts, i.e., it is set by the initial condition, not by Δ.
- **Paper-natural ICs:** p₀ = equilibrium (f_nE/β) or 2× equilibrium at z = 10 → *no crossing at all*: quintessence at every z (the high-z attractor is p = 2p* for β = 3, which lies *above* the falling equilibrium, so dP/dt < 0 throughout). p₀ = 0 at z = 1100 ("pressure accumulates from zero", arguably the IC Paper 6's narrative implies) → crossing at z ≈ 693.
- **Refinement adopted:** for any p₀ below the instantaneous equilibrium a transient phantom phase exists at every β tested; existence is controlled by the IC (below vs. at/above equilibrium), while β sets how soon after the chosen start the crossing occurs. The finding's original sentence attributing phantom-phase existence to β alone was imprecise and has been revised in place.
- **Likely origin of Table 2 (documented, not exculpatory):** if one instead *holds P_th fixed* and solves the static balance 9ζ₀f_n(z)H(z) = βP_th for z — consistent with the paper's line 398–401 reasoning that ζ_n "grows exponentially while the dilution rate grows more slowly" — the Table 2 trend direction *is* reproduced: calibrating the constant to the Δ = 6 K row (z* = 0.85) gives z* = 1.21, 1.01, 0.85, 0.64, 0.41 for Δ = 4, 5, 6, 8, 12 K, close to Table 2's ranges. But this construction contradicts Eq. (7) itself — it asserts dP_th/dt changes sign while treating P_th as constant — and the full integration shows the fixed-P estimate does not survive the paper's own dynamics. Table 2's origin is thus identifiable but still not derivable from the ODE; C1 stands as written.

## Critical Findings

### C1. The Δ/k_B ≈ 5–6 K "constraint from DESI" (Table 2) is not derivable from the paper's own dynamics; numerical integration contradicts both the values and the trend
- **Location:** §4.1–4.2, lines 347–426 (Eq. `eq:P-evolution` line 347–352; Table `tab:crossing` lines 403–420); "robust qualitative prediction" paragraph, lines 374–389.
- **Claim:** The crossing redshift z* follows from dP_th/dt = 9ζ₀f_n(z)H² − βHP_th = 0; Table 2 maps Δ/k_B = 4→12 K onto z* ≈ 1.5→0.1; the crossing *direction* "is robust and does not depend on β" (line 375–376).
- **Why wrong:** The crossing condition S = D contains D = βHP_th, and P_th is a dynamical variable whose value depends on β and on initial conditions — neither is specified anywhere. The relaxation rate toward the quasi-equilibrium P* = 9ζ_nH/β is βH, i.e. β times the expansion rate, so for β ≳ 1 the pressure tracks P*. Since both ζ_n and H *decrease* with time, P* decreases, dP/dt < 0, and the model sits in the quintessence regime at **all** redshifts — no phantom phase, no crossing.
- **Evidence (recomputation):** RK2 integration of dp/dz = −(f_nE − βp)/(1+z) (p ≡ P/(9ζ₀H₀), E = H/H₀ with Ωm = 0.3), α = 6/2.725:
  - Initial P = 1× or 2× local equilibrium at z = 10, β = 1 or 3: **zero crossings; quintessence at every z.**
  - Initial P = 0 at z = 10 (the initial condition most favorable to a phantom phase): one crossing at z ≈ 6.16 (β = 3) or 4.29 (β = 1) — set by where integration starts, not by Δ. Starting at z = 3 gives z* ≈ 1.69; starting at z = 20 gives z* ≈ 12.5.
  - Scanning Δ/k_B = 4, 5, 6, 8, 12 K (start z = 10, P = 0, β = 3): z* = 6.09, 6.12, 6.16, 6.23, 6.35. The crossing barely moves, and it moves **up** with larger Δ — Table 2 claims it moves strongly **down** (1.5 → 0.1).
  - Conclusion: Table 2's z*(Δ) values cannot be produced by Eq. (7) under any tested combination of β and initial conditions; the "estimated z*" column has no visible derivation, and the resulting headline constraint Δ/k_B ≈ 5–6 K is unsupported. The claim that the crossing behavior is β-independent is also false: whether a phantom phase exists at all is controlled by the initial condition (P_th below vs. at/above the instantaneous equilibrium — equilibrium-tracking solutions are quintessence at every z), and for sub-equilibrium starts β sets how soon after the chosen start the crossing occurs (z* ranges from ≈1.3 to ≈6.2 as β runs 0.1→3 for the same IC). *(Revised 2026-07-07 by verification pass: original sentence attributed phantom-phase existence to β alone; independent RK4 integration — which reproduced all of the reviewer's numbers to ~1% — shows the IC controls existence and β the crossing epoch. Substance of the finding unchanged and confirmed; see Verification section, including the fixed-P static-balance construction that likely generated Table 2 and is dynamically inconsistent with Eq. (7).)*
- **Fix direction:** Either derive P_th(z) with stated initial conditions and β and show honestly what z*(Δ, β, P_init) looks like, or drop Table 2 and the "constrains Δ/k_B ≈ 5–6 K" claim, replacing it with the correct statement that Eq. (7) as written generically predicts quintessence at all epochs unless the pressure starts far below equilibrium.

### C2. DESI crossing redshift misstated (z* ≳ 1 vs. actual ≈ 0.4); even on the paper's own Table 2 this breaks the 5–6 K result and the CMB coincidence
- **Location:** Table 2 caption line 417 ("DESI observations indicate z* ≳ 1"); line 422 ("DESI's observed crossing at z ≳ 1"); §7.1 line 645; §3.3 lines 333–334; abstract line 52.
- **Claim:** DESI observes the phantom→quintessence crossing at z ≳ 1, constraining Δ/k_B ≈ 5–6 K.
- **Why wrong:** DESI DR2 (arXiv:2503.14738, the paper's own citation) w₀wₐCDM best fit is w₀ ≈ −0.752, wₐ ≈ −0.86; the CPL w(z) = w₀ + wₐz/(1+z) crosses −1 at z/(1+z) = (−1−w₀)/wₐ = 0.288, i.e. **z ≈ 0.40** (recomputed). Non-parametric reconstructions put the crossing at z ≈ 0.3–0.5. Paper 6 of this same series states "a phantom-to-quintessence crossing around z ≈ 0.5" (Paper 6, lines 689–690) — 6(a) contradicts its own parent paper.
- **Consequences:** Reading z* ≈ 0.3–0.5 off the paper's own Table 2 gives Δ/k_B ≈ 8 K, not 5–6 K. Then (a) the "modestly below helium's 8.6 K" framing (line 423–424) becomes near-coincidence with helium instead, (b) §4.4's "within a factor of two of T₀" becomes a factor of ~2.9, and (c) Prediction 1 (lines 735–739) changes its target range. Every downstream use of "5–6 K" inherits the error.
- **Fix direction:** Correct the crossing redshift to z ≈ 0.4–0.5 and propagate through Table 2, §4.4, §7.1, and Predictions 1–2 — noting this interacts with C1 (Table 2 itself is not derivable).

### C3. ε(T) ∝ T⁻² applied over cosmic history makes G at recombination ~10⁻⁶ of today's value — catastrophically excluded
- **Location:** §5.1–5.2 (Eq. `eq:G-varying` lines 489–492; Eq. `eq:epsilon-power` lines 512–516); §5.4 lines 549–563.
- **Claim:** G(T) = G₀ε(T)/ε(T₀) with ε ∝ T⁻²; at the CMB epoch the only effect considered is the *spatial* variation δG/G = n·δT/T ≈ 2×10⁻⁵, "well within current CMB constraints."
- **Why wrong:** The same functional form applied to the *mean* temperature — and the paper explicitly ties the Aether temperature to T_CMB(z) = T₀(1+z) throughout §2.1 and the handoff table — gives G(z = 1100)/G₀ = (T₀/3000 K)² ≈ **8.3×10⁻⁷** (recomputed). Gravity a million times weaker at recombination eliminates the CMB acoustic peaks, structure growth, and BBN (constraints on G_BBN/G₀ are at the few-percent level; the paper is off by ~6 orders of magnitude). Even at z = 2 the mean G would be 1/9 of today's, wrecking the structure-formation story of §6 that the varying-G channel is supposed to *help*. §5.4 computes only the perturbation δG from δT and is silent about the ~10⁶ suppression of the mean — the perturbation analysis is performed around a background that the model itself has destroyed.
- **Fix direction:** ε(T) cannot be a pure power law in the absolute temperature. It must saturate (e.g., depend only on local temperature *contrast*, or plateau above/below some scale). Any such choice must be stated explicitly and re-checked against the 2.5^n = 6 fit, which currently fixes the power law globally.

### C4. The varying-G dark-matter logic is inverted: weaker G in voids cannot mimic missing mass inside halos, and the predicted radial gradient has the wrong sign
- **Location:** §5.2 (Eq. `eq:G-ratio` lines 502–507); §5.3, lines 536–545 (esp. the second bullet, lines 539–543).
- **Claim:** G_dense/G_void ≈ 6 reproduces the 5–6:1 dark-to-visible mass ratio; "what is conventionally attributed to 'dark matter mass' is the difference between the gravitational effect produced by G_dense and what would be expected from G_void applied to the same visible mass."
- **Why wrong:** This misdescribes how dark matter is inferred. Rotation curves and lensing masses are computed using the laboratory G — which the paper itself says equals G_dense (§5.3, first bullet: measurements near matter give G₀ = G(T_matter)). The Newtonian prediction that *fails* already uses G_dense; astronomers never "expect G_void." Making G six times *weaker* in distant voids adds zero attraction inside a halo. Worse, the model's own temperature topology (cold near matter, warm toward voids) makes G *decrease* outward through a galaxy's outskirts — exactly where rotation curves demand *extra* gravity. As stated, the mechanism is anti-dark-matter in the region that matters. (The bootstrapping story for early collapse, §6, has the same problem: it enhances G only where visible matter already dominates the potential, deep inside the cold region, and weakens it at the halo edge.)
- **Evidence:** No recomputation needed; the sign follows from the paper's own Eqs. (10)–(12) plus its statement that lab G = G(T_matter). Note also Eq. (11) requires ratio 6 while line 500 says the mass ratio is "5–6:1" — the fit n ≈ 1.95 uses the top of the range.
- **Fix direction:** Either abandon the G_dense/G_void ≈ 6 quantification and rest the DM claim entirely on the first-sound correction (Paper 6's mechanism, which has the correct sign), or reformulate varying-G as an *intra-halo radial* effect with a temperature profile that increases G outward — which contradicts ε(T) as currently defined.

## Major Findings

### M1. Bulk viscosity is assigned the opposite dynamical role to the cited literature: in FRW cosmology bulk viscosity *drives* acceleration, it does not brake it
- **Location:** §2.3 steps 4–5, lines 198–207; abstract lines 46–50; §7.2 lines 655–662.
- **Claim:** ζ_n "brakes" cosmic expansion; the collapse of ζ_n removes the braking and thereby produces acceleration; this is supported ("exact match") by bulk-viscous cosmology fits requiring ζ₀ ~ 10⁶ Pa·s.
- **Why wrong:** In relativistic (Eckart) bulk-viscous cosmology — the framework of the cited Hernández-Almada et al. — bulk viscosity enters as effective pressure P_eff = P − 3ζH. Positive ζ makes pressure *more negative* and *accelerates* the expansion; that is precisely why those models invoke ζ₀ ~ 10⁶ Pa·s as a dark-energy substitute. The paper's mechanism needs the opposite sign (viscosity as drag whose removal unleashes acceleration). One cannot simultaneously claim the mechanism (viscosity = brake) and cite as quantitative support a literature in which viscosity = accelerator. Within the paper's own Newtonian-fluid intuition the drag picture may be internally definable, but then the ζ₀ ~ 10⁶ Pa·s "observation" (§7.2) is not evidence for it.
- **Fix direction:** State explicitly that the Aether model's viscosity enters the expansion dynamics with the opposite sign to standard bulk-viscous cosmology, and remove or heavily qualify §7.2's "exact match."

### M2. Direct contradiction with Paper 6: the temperature channel of G variation is there computed as suppressed by ~10⁻³⁷ and G is held constant
- **Location:** 6(a) §5 entire (lines 471–563) vs. Paper 6 (`TeX/6 - Cosmology.tex`) lines 576–583: "the temperature channel (through the asymmetry fraction ε) is suppressed by the ratio P_th/K_A ∼ 10⁻³⁷ … The Friedmann equation below therefore uses constant G."
- **Claim (6a):** the same temperature contrast (T_void/T_wall ≈ 2.5, citing Paper 6's own equation) drives ε(T_matter)/ε(T_void) ≈ 6 — an order-unity G variation.
- **Why wrong:** The two papers assign the identical physical channel effects differing by ~37 orders of magnitude, with no reconciliation or even acknowledgment. Paper 6's suppression argument (thermal energy ≪ mechanical energy scale of the bind–unbind cycle) directly attacks 6(a)'s premise.
- **Fix direction:** One of the two treatments must be revised or the papers must explicitly flag the disagreement as an open branch point.

### M3. The abstract's "onset of acceleration ∼5 Gyr ago = epoch when T crossed the roton gap" is internally inconsistent with the paper's own gap value
- **Location:** Abstract lines 50–52; §4.4 lines 450–463.
- **Claim:** Acceleration onset ~5 Gyr ago coincides with T_Aether crossing Δ/k_B.
- **Why wrong (recomputed, flat ΛCDM Ωm = 0.3, H₀ = 70):** T_CMB = Δ/k_B at z = Δ/(k_B T₀) − 1: for Δ/k_B = 5 K, z = 0.835 (lookback 7.0 Gyr); for 6 K, z = 1.20 (lookback 8.4 Gyr). The actual acceleration onset (q = 0 at z ≈ 0.63) has lookback ≈ 6.0 Gyr, and "5 Gyr ago" corresponds to z ≈ 0.47. Under the paper's own numbers the gap crossing precedes the acceleration onset by 1–2.4 Gyr and neither epoch is "~5 Gyr ago." No calculation connecting gap crossing to onset is ever presented.
- **Fix direction:** Recompute the epochs and either add the (missing) link from gap-crossing to onset with a stated delay, or soften the abstract claim.

### M4. Inconsistent temperature assignment: the freeze-out narrative uses T = T_CMB globally, but the paper's own void temperature (2.5 × T_matter ≈ 6.8 K) is *above* the roton gap today
- **Location:** §2.1 lines 132–135 and Eq. `eq:fn` lines 245–257 (global T = T₀(1+z)) vs. §5.2 lines 509–510 (T_void/T_matter ≈ 2.5, from Paper 6 eq:T-ratio).
- **Claim:** The normal fraction in the medium whose viscosity brakes the expansion has collapsed ("ratchet engaged," handoff table line 585).
- **Why wrong:** Per Paper 6, the bulk-viscous dissipation and the thermal pressure live in the *voids*, and voids are 2.5× hotter than matter regions. If T_matter ≈ T_CMB = 2.725 K, then T_void ≈ 6.8 K > Δ/k_B = 5–6 K (recomputed): void rotons are *not* frozen out today, exp(−Δ/k_BT_void) is order 0.4, and the exponential collapse driving the entire dark-energy story has barely begun in the only region where ζ_n matters. Conversely, if the global T in Eq. (5) is the void temperature, then T_matter ≈ 2.7 K/2.5 ≈ 1.1 K and the CMB-tracking claim of §2.1 fails. The dark-energy half (§2–4, global T = T_CMB) and the dark-matter half (§5, bimodal T) of the paper use mutually inconsistent temperature fields.
- **Fix direction:** Define one temperature field T(x, z), state which component the CMB thermometer reads, and redo the freeze-out timing for the void temperature specifically.

### M5. f_n(z) = exp[αz/(1+z)] is used far outside its validity domain (T ≫ Δ/k_B), where the normal fraction must saturate
- **Location:** Eq. `eq:normal-fraction` lines 145–149 (validity stated: T ≲ Δ/k_B); Table 1 row z = 5 (T = 16.4 K ≈ 2.7 Δ/k_B), lines 267–288; handoff table "Viscous braking (strong)" at recombination, line 582; §3.2 text lines 290–293.
- **Claim:** Viscous heating was 410× today's at z = 5, and braking was "strong" at z ≈ 1100.
- **Why wrong:** The paper's own Eq. (1) restricts the Boltzmann form to T ≲ Δ/k_B. Above the gap the normal fraction saturates at ρ_n = ρ_A (in He-4 the two-fluid regime terminates at T_λ ≈ 2.17 K; there is no superfluid component above it). Two consequences: (a) Table 1's z = 5 row and all high-z "strong braking" claims overstate ζ_n growth — the formula's own asymptote is f_n(∞) = e^α ≈ 9.0 (recomputed), so consistency requires today's normal fraction ≤ 1/9 ≈ 0.11 of ρ_A, a constraint never stated; (b) the model implies the early universe was *above* the Aether's lambda point, i.e., not superfluid at all, which interacts badly with mechanisms elsewhere in the series that need superfluidity at early times.
- **Fix direction:** Cap f_n at saturation, state the implied bound on ρ_n(0)/ρ_A, and rework the high-z rows of Tables 1 and 3.

### M6. Phantom provenance (known issue, confirmed at this commit): "Paper 3 derives G ∝ ε ρ_A ψ²" — Paper 3 contains no such derivation and ψ is undefined series-wide
- **Location:** 6(a) line 473; Paper 3 (`TeX/3 - Gravity.tex`) lines 156–157 and 884–891.
- **Claim:** The foundation of the entire §5 dark-matter channel is a Paper 3 derivation.
- **Why wrong:** Paper 3 line 156 asserts G ∝ ε ρ_A ψ² "as derived in the Unification of Force Constants section," but that section (line 885) states only G = ε·k·(geometric and mass factors)/c² — no ρ_A, no ψ, and no derivation (ε is *defined* from the observed EM-to-gravity ratio 4.17×10⁴², making the relation definitional, not derived). ψ appears nowhere with a definition in Paper 3 (or anywhere in the series, per the Paper 3 review). Circular provenance: 6(a) cites Paper 3, which cites its own summary section, which contains a different, underived formula.
- **Fix direction:** Replace "derives" with "postulates," define ψ or remove it, and acknowledge that ε(T)'s very existence is a hypothesis (Paper 3 §1.3 itself uses "could," "potentially").

## Moderate Findings

### Mo1. The coincidence "resolution" is circular, and "within a factor of two" is arithmetically marginal
- **Location:** §4.4 lines 450–463; §7.6 lines 714–726; Prediction 1 lines 735–739.
- **Issue:** Δ/k_B ≈ 5–6 K was obtained by fitting the DESI crossing (§4.2); §4.4 then declares T₀ ≈ Δ/k_B "not a coincidence — a consequence," and Prediction 1 re-presents the fitted value as "a specific, testable prediction." The timing was inserted by the fit, not explained. Numerically, 5/2.725 = 1.83 but 6/2.725 = 2.20 — "within a factor of two" fails at the top of the quoted range (and at Δ ≈ 8 K, per C2, it is 2.9). §7.6 also equates co-*timing* with co-*magnitude*: no calculation anywhere yields Ω_DE ≈ 0.68 or Ω_DM ≈ 0.27, so "similar magnitudes without fine-tuning" is asserted, not shown. "Resolved in principle" overstates.

### Mo2. §7.2 "Exact match" for ζ₀ ~ 10⁶ Pa·s is circular and overstated
- **Location:** §7.2 lines 655–662; Paper 6 lines 137–156 and 1437.
- **Issue:** Paper 6 obtains ζ_n by *requiring* viscous dissipation to reproduce the observed dark-energy density (ζ_n ≈ ρ_Λc²/(9H²t₀) ~ 3×10⁷ Pa·s, refined to ~10⁶) — and the external bulk-viscous fits cited as "observation" tune ζ to the same expansion data. Two fits to the same target agreeing is not a match, let alone an "exact" one; Paper 6 itself quotes the range 10⁶–3×10⁷ Pa·s. (See also M1: those models use ζ with the opposite dynamical role.)

### Mo3. ε ∝ T⁻² is reverse-engineered, then dressed as physically motivated
- **Location:** §5.2 lines 512–523.
- **Issue:** n ≈ 1.95 is derived by *requiring* 2.5ⁿ = 6 (recomputed: ln6/ln2.5 = 1.9554 — arithmetic correct). The subsequent "pair" argument (two particles ⇒ product of two factors ⇒ T⁻²) presupposes each factor scales exactly as T⁻¹, which is never justified; any per-particle law T^(−m) would give T^(−2m). Open Question 1 admits this, but §5.2's framing ("physically motivated") and §5.4's quantitative use of n = 2 present a fit as a derivation.

### Mo4. Prediction 5: bulk viscosity does not damp gravitational waves
- **Location:** Prediction 5, lines 760–763.
- **Issue:** Damping of tensor gravitational waves in a viscous medium is governed by *shear* viscosity (η), not bulk viscosity (ζ); bulk viscosity couples only to expansion scalar modes. A redshift-dependent ζ_n would not "manifest as redshift-dependent damping of… gravitational wave propagation." The BAO-damping half of the prediction is also unquantified. (In the Aether framework GWs are additionally claimed to be medium waves, but then Paper 3/6's own GW170817 constraints apply, and the shear/bulk distinction still holds for any fluid.)

### Mo5. Relationship to Paper 6(b) — a mutually exclusive alternative — is never mentioned
- **Location:** Entire paper (grep confirms zero occurrences of "6(b)" or "Hot Matter"); contrast 6(b) (`TeX/6(b) - Hot Matter Model.tex`) lines 653–676, whose comparison table states the topologies are opposite (6(a): cold near mass / hot voids; 6(b): warm near mass / cold voids).
- **Issue:** 6(b) handles the relationship honestly (explicit "alternative," comparison table). 6(a) does not: it presents its temperature landscape unconditionally, and a reader of 6(a) alone cannot know that a sibling paper in the same series assumes the opposite sign of the mass–void temperature contrast, with a different key parameter (η_K vs. Δ) and a different crossing story. The two cannot both be true. 6(a) needs a reciprocal pointer and a statement of exclusivity. (Also: 6(b) line 656–657 quotes the shared crossing as "z ∼ 0.5–1," inconsistent with 6(a)'s "z ≳ 1.")

## Minor Findings

### Mi1. Table 1 column-spec mismatch
- Line 269: `\begin{tabular}{@{}lccccc@{}}` declares 6 columns; only 5 are used (lines 271–272). Cosmetic; compiles but leaves a phantom column.

### Mi2. Stale Paper 6 equation references
- Line 510: "Paper 6, Eq. 18" for T_void/T_wall ≈ 2.5 — in the current Paper 6 that is Eq. 7 (`eq:T-ratio`, line 634). Line 660: "Paper 6, Eq. 2" for ζ₀ — actually Eq. 1 (`eq:zeta-normal`, line 141). Numeric cross-references should be labels.

### Mi3. desi2025 bibliography title garbled
- Lines 827–831: arXiv:2503.14738 is "DESI DR2 Results II: Measurements of Baryon Acoustic Oscillations and Cosmological Constraints," not "Measurement of the Baryon Acoustic Oscillation scale and Hubble parameter across 11 billion years."

### Mi4. Inconsistent DESI significance within the paper
- Line 334: "2.8–4.2σ" (DR2 value, correct); line 645: "2.5–3.9σ" (the DR1 figure) — same \cite{desi2025} both times.

### Mi5. Handoff-table temperature rounding
- Line 584: z = 2–20 → "8–55 K"; actually 2.725 × 21 = 57.2 K. Should read ~8–57 K.

### Mi6. Block quote from Paper 3 §1.3 is a lightly edited paraphrase presented as verbatim
- Lines 480–485 vs. Paper 3 lines 162–167: 6(a) drops Paper 3's parenthetical "(near matter, where thermal energy is locked into mass formation)" and adjusts wording. Should be marked as paraphrase or quoted exactly.

### Mi7. Stellar-radiation shortfall factor understated
- Lines 127–129: DE density = 0.68·ρ_crit·c² ≈ 5.3×10⁻¹⁰ J/m³; against the quoted 10⁻¹⁴ J/m³ the ratio is ~5×10⁴ (and the measured EBL energy density is closer to 2×10⁻¹⁵ J/m³, ratio ~2.5×10⁵). "~10⁴ times short" is 0.7–1.4 orders low. Direction of the argument unaffected.

## Verified Sound

- **Table 1 arithmetic (lines 267–288):** every entry recomputed and confirmed to displayed precision — f_n(z) = exp[2.202·z/(1+z)] gives 1.66, 2.08, 2.48, 3.01, 4.34, 6.26; (H/H₀)² = 0.3(1+z)³+0.7 gives 1.36, 1.71, 2.17, 3.10, 8.80, 65.5; products 2.3, 3.6, 5.4, 9.3, 38.2, 410; T_CMB(z) values correct.
- **f_n algebra (lines 251–259):** the ratio of Boltzmann factors correctly reduces to exp[α z/(1+z)]; α = Δ/(k_BT₀) values in Table 2 (1.47, 1.83, 2.20, 2.94, 4.40) all recompute exactly.
- **w(z) definition (Eq. 6, lines 301–304):** w = −1 − (1/3H)d ln ρ_DE/dt is the correct continuity-equation form, and the phantom/quintessence sign logic (lines 319–325) is consistent with it.
- **Dimensional check:** 9ζ_nH² → Pa·s·s⁻² = W/m³, a valid energy-density rate; matches Paper 6 line 137.
- **He-4 roton physics (lines 140–165):** Δ_He/k_B ≈ 8.6 K is correct (accepted value 8.65 K); the Landau roton normal-fraction prefactor ρ_n,rot ∝ T^(−1/2)e^(−Δ/k_BT) is correctly stated; the claimed prefactor correction (1+z)^(−1/2) ≈ 42% reduction at z = 2 recomputes correctly (3^(−1/2) = 0.577).
- **CMB history (lines 132–135):** T(z) = 2.725(1+z) K gives 8.18 K at z = 2 and 16.35 K at z = 5, matching "~8 K" and "~16 K."
- **n = 1.95 (Eq. 12):** ln6/ln2.5 = 1.9554 ✓ (the *use* of this fit is contested — Mo3, C3, C4 — but the arithmetic is right).
- **δG/G at recombination (Eq. 13):** n·δT/T = 2×10⁻⁵ for n ≈ 2, δT/T = 10⁻⁵ ✓ (as a perturbation statement only; see C3 for the ignored mean).
- **Cosmological fractions (lines 77–82):** 68% / 27% match Planck 2018.
- **Comparison constants (lines 425–426):** m_He = 4 amu, ρ_He ≈ 145 kg/m³ (T→0 SVP) correct; m_A ~ 700 MeV/c², ρ_A ~ 10¹²  kg/m³, K_A ~ 10²⁸ J/m³ consistent with the ranges used in Papers 3/7(a).
- **Consistency-web citation (lines 167–172):** the four quantities attributed to Paper 6 (Δc₁²/c² ~ 10⁻⁶, ζ_n ~ 10⁶ Pa·s, T_void/T_wall ≈ 2.5, w(z)) match Paper 6 lines 649–656.

## Cross-Paper Dependencies

- **Paper 3:** G ∝ ε ρ_A ψ² provenance is phantom (M6, confirmed at this commit — Paper 3 lines 156, 885). Any fix to Paper 3's force-constant section must propagate to 6(a) §5.1. Paper 3's ε(T) language is explicitly conjectural ("could," "potentially"); 6(a) hardens it into equations.
- **Paper 6:** (a) constant-G statement (lines 576–583, suppression 10⁻³⁷) contradicts 6(a) §5 (M2); (b) Paper 6 places the DESI crossing at z ≈ 0.5 (line 690) — 6(a) says z ≳ 1 (C2); (c) 6(a)'s stale Eq.-number citations (Mi2); (d) ζ₀ provenance is a fit to ρ_Λ in Paper 6, so §7.2's "exact match" is self-referential (Mo2); (e) the T_void/T_wall ≈ 2.5 import creates the temperature-assignment clash of M4.
- **Paper 6(b):** mutually exclusive temperature topology (cold-near-mass vs. warm-near-mass). 6(b) discloses the conflict (comparison table, lines 653–676); 6(a) never mentions 6(b) (Mo5). The two also disagree on the crossing redshift ("z ∼ 0.5–1" vs. "z ≳ 1"). Whichever paper survives, the series needs a single statement of which thermal landscape is operative and what discriminates them observationally.
- **Paper 7 / 7(a):** the roton-gap open question (deriving Δ from m_A, ρ_A, K_A — Open Question 2) is the same excitation-spectrum unknown flagged in Papers 6 and 7; if a spectrum is ever fixed there, 6(a)'s Δ (whatever value survives C1/C2) becomes an immediate consistency test.
