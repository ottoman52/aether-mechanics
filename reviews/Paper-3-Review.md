# Paper 3 — Gravity — Accuracy Review

Reviewed: 2026-07-07 (post commit 720541c)
File: `TeX/3 - Gravity.tex` (line numbers below refer to this file at commit 720541c)

## Summary

**Counts: 1 Critical, 4 Major, 8 Moderate, 9 Minor.** *(Post-verification 2026-07-07: counts
unchanged — C1 and all four Majors CONFIRMED under adversarial recheck, no findings refuted;
Mo1 REVISED in place to a weaker but surviving form.)*

The 2026-07-07 revision (720541c) was cosmetic with respect to accuracy: it fixed four dangling
cross-references (`sec:force-constants` → Paper 1, `sec:black-holes` → Paper 6, `sec:magnetism` →
Paper 4, `sec:qss` → Paper 7), added the missing `otto-quantum` bibitem, and reworded the
flow-vector footnote and the Tajmar null-result item into the new spin-phase-current language.
**None of the substantive findings from the 2026-06-11 review were addressed.** The headline
problem remains: the paper identifies gravitational waves as *compression* (longitudinal/scalar)
pressure waves and cites GW170817 as confirmation, when GW170817's polarization analysis excludes
pure scalar modes at overwhelming odds. The gravitomagnetic section still contains an internal
factor-2 inconsistency (its own equations compose to half the quoted 39.3 mas/yr), the abstract
still claims a derivation of G that the paper's own Open Questions defer to future work, and the
G ∝ ε·ρ_A·ψ² expression still references a section that does not exist in this paper with a ψ
that is defined nowhere. The paper's arithmetic, where checkable, is almost entirely correct —
the errors are structural and attributional, not numerical.

---

## Verification Pass (2026-07-07)

Adversarial verification of the Critical and all Major findings, plus five Moderates
(Mo1, Mo3, Mo4, Mo5, Mo8). Method: re-read all cited passages in context, independent
recomputation of every number (PowerShell), grep for hedges/caveats the reviewer might
have missed, and direct checks of the reviewer's own physics claims against Papers 1/6/7.

| Finding | Verdict | Note |
|---|---|---|
| C1 — compression GWs vs GW170817 polarization | **CONFIRMED** | All six cited passages verified verbatim; `polariz` appears nowhere in Paper 3 and no GW-polarization discussion exists anywhere in the series (grep across all TeX; Paper 7's "two transverse polarization states" is the photon, not GWs). One supporting clause slightly overstated — see note below. |
| M1 — gravitomagnetic factor-2 | **CONFIRMED** | Recomputed end-to-end; the paper's own Eqs. (5)+(6) compose to 19.65 mas/yr vs the 39.3 quoted in Eq. (7). Reviewer did **not** double-count — see arithmetic below. |
| M2 — abstract "derives G" vs Open Question 1 | **CONFIRMED** | Both passages verified verbatim (abstract line 52: "derives the gravitational constant $G$ from binding physics"; OQ1 lines 587–592: "it may be possible to derive..."; also §1.3 line 148 "may ultimately be derivable" and Summary line 502 "predicted to be derivable"). |
| M3 — G ∝ ε·ρ_A·ψ², ψ undefined, circular provenance | **CONFIRMED** (strengthened) | ψ appears in Paper 3 only at lines 156 and 646, never defined. Paper 1 *does* contain a section literally titled "Unification of Force Constants" (its line 212), so the prose pointer is not fully dangling — but that section contains **no ψ at all** (grep: zero `\psi` in Paper 1), no G ∝ ε·ρ_A·ψ² formula, and closes with "The detailed equations and derivations are presented in Papers 2, 3, and 4" — the circular provenance is now directly verified, not presumed. |
| M4 — Hawking formula unearned | **CONFIRMED** | No mechanism content anywhere in the body; besides the math summary (lines 893–899), "Hawking" appears only in Open Question 6(d), which itself lists "the exact Hawking temperature coefficient" as *open* — reinforcing the finding. Reviewer's proposed acoustic derivation checks exactly: κ = c⁴/4GM ⇒ T = ℏκ/(2πk_Bc) = 6.169×10⁻⁸ K for M_⊙, identical to ℏc³/(8πGMk_B). |
| Mo1 — bertotti2003 miscited | **REVISED** | Weakened but survives; see revised body. Line 549's "radio tracking" is actually an accurate description of Cassini, and via PPN γ the Cassini result *does* constrain the deflection coefficient (1+γ)/2 at the ~10⁻⁵ level. Surviving errors: line 418's "radio interferometry" mislabels the technique, and the support is an indirect γ inference from a *time-delay* measurement, not a deflection measurement. |
| Mo3 — ε bookkeeping | **CONFIRMED** | Recomputed ke²/(Gm_e²) = 4.166×10⁴², inverse 2.401×10⁻⁴³. Paper 1 (lines 258–263) independently confirms the ratio "decomposes further into quantitative factors (pump strength, emission asymmetry, receiver-response threshold)" — i.e., ε alone should *not* equal the full 10⁻⁴³, yet Paper 3 line 329 identifies it as such. |
| Mo4 — "see Paper 1" pointers backwards | **CONFIRMED** | Paper 1 line 110: "Each companion paper contains its own mathematical summary, experimental..."; line 549: "Each paper contains its own Mathematical Summary section..."; no "Proposed Experiments" section exists in Paper 1. Both pointers verified backwards. |
| Mo5 — no perihelion/Shapiro, massive geodesics unestablished | **CONFIRMED** | grep: "perihelion" and "Shapiro" appear nowhere in Paper 3; the "All predictions ... follow directly" claim (lines 393–396) verified verbatim; no timelike-geodesic or massive-particle equation of motion appears anywhere in the paper. |
| Mo8 — pressure-deficit mechanism vs ΔP = 0 | **CONFIRMED** | §1.2 (lines 104–107) verified: attraction grounded in "a net reduction in pressure near the source — a persistent inward pull." Math summary (851–854) verified: Δρ/ρ_A = 0 "exactly," and with P = K_A ln(ρ/ρ₀) that forces ΔP = 0 exactly (independently rechecked: ∫dP/ρ = −K_A/ρ; free fall ½v²+Φ = 0 ⇒ ρ = const ⇒ P = const). Searched for a reconciling passage (momentum-flux/drag force transmission, O(ε) residual): none exists — the closest is "only the tiny asymmetry ε propagates outward" (line 461), which is never connected to the force on a static body. Note the paper even wavers internally: line 159 says "essentially constant" where the summary says "exactly." |

**M1 verification arithmetic** (G = 6.674×10⁻¹¹, J_⊕ = 5.86×10³³ kg m²/s, R = 7.013×10⁶ m,
δ = 16.84°, 1 mas = 4.848×10⁻⁹ rad):

- GJ/(c²R³) = 1.2616×10⁻¹⁴ rad/s.
- Polar-orbit average of the paper's dipole Eq. (5): ⟨3(Ĵ·r̂)r̂ − Ĵ⟩ = ½Ĵ (rechecked by direct
  integration over a polar circle), so ⟨B_g⟩ = GJ/(2c²R³).
- Paper's Eq. (7) as printed: GJ/(2c²R³)·cosδ = **39.30 mas/yr** ✓ (matches GR/GP-B).
- Paper's Eq. (5) + Eq. (6) composed: ½·⟨B_g⟩ = GJ/(4c²R³)·cosδ = **19.65 mas/yr** — half of Eq. (7).
- Tension vs GP-B if the chain is taken literally: (37.2 − 19.65)/7.2 = **2.44σ**.
- Kill-check (did the reviewer double-count?): the Schiff/Lense–Thirring gyroscope precession is
  Ω = (G/c²r³)[3(J·r̂)r̂ − J] *directly* — exactly the paper's Eq. (5) expression. In the GEM
  convention where Ω = ½B_g, the dipole field is B_g = **2**G/(c²r³)[3(J·r̂)r̂ − J]. The paper's
  Eq. (5) lacks that factor 2 while Eq. (6) applies the ½ — mixed conventions, exactly as the
  review states. The reviewer did not double-count; finding stands.

**C1 note:** the finding and all its citations check out (PRL 123, 011102 is the GW170817
tests-of-GR paper; pure tensor over pure scalar at log₁₀BF ≈ 23, over pure vector ≈ 20). One
supporting clause in the "why wrong" text is overstated: a scalar/breathing mode *does* produce a
differential-arm response (nonzero scalar antenna pattern) — the exclusion comes from the
three-detector antenna-pattern/Bayes-factor analysis, not from a null response. Core finding
unaffected. Strictly the BF test compares *pure* polarization hypotheses, but the paper as written
commits to a purely longitudinal wave, so the constraint applies squarely.

---

## Critical Findings

### C1 — Gravitational waves described as compression (scalar/longitudinal) waves; GW170817 cited as support — STILL PRESENT
- **Location:** §1 (lines 73–75, 97–99), §2.1.4 (lines 474–475), Summary (lines 487–488, 493),
  Experimental Support item 2 (lines 540–545), Open Question 7 (lines 639–642).
- **Claim:** Gravity is "an oscillating pressure disturbance," and GW170817's speed measurement
  is "consistent with this theory's prediction that gravitational waves are compression waves in
  the same medium that carries light" (lines 543–545).
- **Why wrong:** A compression wave in a fluid is longitudinal — a scalar (breathing/longitudinal)
  polarization. LIGO/Virgo's polarization analysis of GW170817 (Abbott et al., "Tests of General
  Relativity with GW170817," PRL **123**, 011102 (2019)) finds pure tensor favored over pure
  scalar with a Bayes factor of log₁₀ ≈ 23 (and over pure vector at log₁₀ ≈ 20). GWTC-3
  population tests and pulsar-timing-array limits on scalar-longitudinal modes independently
  exclude a purely longitudinal GW sector. LIGO's differential-arm response and the three-detector
  antenna-pattern consistency of GW170817 cannot be produced by a pressure wave. Citing GW170817
  for the speed while its polarization data excludes the paper's stated wave type is selective use
  of the same dataset. No paper in the series addresses GW polarization.
- **Fix direction:** Claim only the propagation-speed agreement; explicitly add polarization as an
  open problem. The framework's transverse sector (spin-nematic Goldstone modes, Papers 6/7 —
  transverse spin waves admit two polarization states) is the natural direction for a tensor-like
  mode; the compression channel could then be constrained to be subdominant rather than identified
  with the observed GWs.

---

## Major Findings

### M1 — Gravitomagnetic derivation chain internally inconsistent by a factor of 2 — STILL PRESENT
- **Location:** §1.7, Eqs. `\ref{eq:Bg-dipole}` (lines 278–284), `\ref{eq:FD-precession}`
  (lines 286–293), `\ref{eq:FD-GPB}` (lines 303–309); repeated in Summary (lines 518–523) and
  Experimental Support item 4 (lines 554–560).
- **Claim:** B_g = (G/c²r³)[3(J·r̂)r̂ − J], gyroscope precession Ω = ½B_g, yielding
  Ω_FD = GJ/(2c²R³)·cosδ = 39.3 mas/yr, a "no-fit derivation."
- **Why wrong:** Composing the paper's own equations: the polar-orbit average of the dipole is
  ⟨3(Ĵ·r̂)r̂ − Ĵ⟩ = ½Ĵ, so ⟨B_g⟩ = GJ/(2c²R³); applying Ω = ½B_g then gives
  GJ/(4c²R³)·cosδ = **19.65 mas/yr** — half the value stated in Eq. (7). Recomputed:
  GJ/(2c²R³)·cosδ = 39.30 mas/yr (G=6.674e-11, J=5.86e33, R=7.013e6, δ=16.84°), so the
  quoted 39.3 is the correct GR/GP-B number, but it corresponds to Ω = B_g (their normalization)
  with no ½, i.e. Ω_LT = (G/c²r³)[3(J·r̂)r̂ − J]. In GR the Lense–Thirring precession *is* that
  expression directly; in GEM conventions where Ω = ½B_g, the dipole field carries an extra
  factor 2. The paper includes the ½ **and** the unit-strength dipole — a double-count that halves
  the prediction. As written, the "zero adjustable parameters" chain disagrees with GP-B at
  (37.2 − 19.65)/7.2 ≈ 2.4σ.
- **Fix direction:** Either drop Eq. (6)'s ½ (and its "standard gyroscopic coupling"
  justification, which is not standard — a gyroscope in a gravitomagnetic field precesses at
  Ω = −½B_g only in the convention where B_g is defined with the factor 4G/2 GEM normalization)
  or put the factor 2 into the dipole equation, and state which convention is used.

### M2 — Abstract claims the paper "derives the gravitational constant G"; the paper's own Open Questions defer this — STILL PRESENT
- **Location:** Abstract (lines 52–53) vs. §1.3 (lines 110–154), Summary (lines 499–504),
  Open Question 1 (lines 587–592).
- **Why wrong:** §1.3 lists four qualitative ingredients G "encodes" and says G "may ultimately be
  derivable" (line 148–150); the Summary says G "is predicted to be derivable"; Open Question 1
  explicitly lists "Deriving G from fundamental constants" as not-yet-done future work whose
  success "would be strong evidence for this theory." No derivation of G exists anywhere in the
  paper. The abstract's "derives the gravitational constant G from binding physics" is factually
  false about the paper's own content.
- **Fix direction:** Abstract should say "identifies the physical content of G" or "constrains G,"
  not "derives."

### M3 — G ∝ ε·ρ_A·ψ²: ψ undefined; cites a section that does not exist in this paper; inconsistent with the paper's own math summary — STILL PRESENT
- **Location:** §1.3 (lines 156–158): "Since G ∝ ε ρ_A ψ² (as derived in the Unification of
  Force Constants section)"; Open Question 8 (line 646); Math Summary Eq.
  `\ref{eq:sum-G-from-k}` (lines 884–891).
- **Why wrong:** (a) ψ is never defined in this paper (nor consistently anywhere in the series);
  (b) there is no "Unification of Force Constants section" in this paper — the 720541c cross-ref
  cleanup converted four dangling `\ref`s to paper citations but left this prose pointer dangling
  (the referenced derivation presumably lives in Paper 1, which per the cross-series review
  attributes it back to Paper 3 — circular provenance); (c) the paper's own math summary gives a
  *different* functional form, G = ε·k·(geometric and mass factors)/c², with no ψ and no ρ_A;
  Paper 7 uses a third form (ψ/φ)². Three inconsistent expressions for the series' central
  unification claim.
- **Fix direction:** Define ψ once, pick one form, derive it in exactly one paper, and cite that
  paper from everywhere else.

### M4 — Hawking temperature appears as a bare, unearned formula — STILL PRESENT
- **Location:** Math Summary (lines 893–899): "From the inflow velocity gradient at the sonic
  horizon: T_H = ℏc³/(8πGMk_B)."
- **Why wrong:** Nothing in the body of this paper derives or even discusses Hawking radiation;
  the mechanism content lives in Paper 6, while Paper 1 attributes it to Paper 3. As it stands the
  formula is copied from standard GR results and labeled as following from the inflow gradient
  without the computation.
- **Fix direction (cheap win):** The claimed derivation is actually three lines with the machinery
  already in the paper. For v_in² = 2GM/r, the acoustic surface gravity is
  κ = ½·|d(c² − v_in²)/dr| at r_s = GM/r_s² = c⁴/(4GM), and T_H = ℏκ/(2πk_B c) =
  ℏc³/(8πGMk_B) — *exactly* the Hawking value (verified numerically: 6.17×10⁻⁸ K for M_⊙).
  Adding this would convert the bare formula into a genuine result of the inflow picture.

---

## Moderate Findings

### Mo1 — bertotti2003 miscited for 0.01% light-deflection interferometry — STILL PRESENT
*(Revised 2026-07-07 by verification pass: weakened but survives. Line 549's "radio tracking" is
in fact an accurate description of Cassini's Doppler-tracking technique, and because the PPN
deflection coefficient is (1+γ)/2, Cassini's γ − 1 = (2.1 ± 2.3)×10⁻⁵ does constrain the bending
angle at the ~10⁻⁵ level — so the "better than 0.01%" precision claim is indirectly supportable
from the cited source. What survives: (a) line 418's "radio interferometry" mislabels Cassini's
technique; (b) both passages present a time-delay-derived γ inference as a verification of the
deflection itself — the direct interferometric deflection measurement is VLBI (Lambert &
Le Poncin-Lafitte 2011, γ to ~1.5×10⁻⁴, i.e. ~0.01%), which is what "0.01% by radio
interferometry" actually describes.)*
- **Location:** §2.1.2 (lines 417–419) and Experimental Support item 3 (lines 547–549).
- **Why wrong:** Bertotti, Iess & Tortora, Nature **425**, 374 (2003) is the *Cassini* Doppler
  measurement of the *Shapiro time delay* (γ − 1 = (2.1 ± 2.3)×10⁻⁵), not a radio-interferometric
  deflection measurement. The ~10⁻⁴-level VLBI deflection determination is Lambert &
  Le Poncin-Lafitte, A&A **529**, A70 (2011) (γ to ~1.5×10⁻⁴), or Fomalont et al. (2009). The
  claimed "0.01% by radio interferometry" (line 418) attributes the wrong technique to the cited
  experiment; the deflection support drawn from it is an indirect PPN-γ inference, not a
  deflection measurement.
- **Fix direction:** Cite Lambert & Le Poncin-Lafitte for VLBI deflection; optionally keep
  Bertotti with the technique correctly described ("Doppler tracking, via PPN γ") — or add a
  Shapiro-delay prediction so the citation earns its place directly (see Mo5).

### Mo2 — Vacuum-catastrophe "resolution" is asserted, not computed, and contradicts Paper 1's version — STILL PRESENT
- **Location:** §1.6 (lines 223–244), §2.1.4 (lines 468–472), Abstract (line 53), Open Question 2
  (lines 594–598).
- **Why wrong:** The abstract says the paper "resolves the vacuum catastrophe," but the text only
  proposes that the recycled/unrecycled ratio "could account for" the 10¹²⁰ discrepancy — no
  number is derived (Open Question 2 admits this). Separately, Paper 1 describes the vacuum
  energy as "reinterpreted as bulk modulus," a different resolution mechanism; the two accounts
  have never been reconciled.
- **Fix direction:** Abstract: "offers a resolution path." Reconcile with Paper 1's description
  or change one of them.

### Mo3 — ε bookkeeping inconsistent: whole 10⁻⁴³ ratio vs. one factor among several — STILL PRESENT
- **Location:** §1.7 (lines 328–329): gravitomagnetism "suppressed by ε ~ 10⁻⁴³ relative to EM";
  Math Summary (lines 884–891): G = ε·k·(geometric and mass factors)/c², where ε "encodes" the
  ratio ke²/(Gm_e²) ≈ 4.17×10⁴².
- **Why wrong:** Recomputed: ke²/(Gm_e²) = 4.166×10⁴², so 1/ratio = 2.40×10⁻⁴³ — the arithmetic
  is fine. But if unspecified "geometric and mass factors" also enter G, ε alone need not equal
  2.4×10⁻⁴³; line 329 nevertheless identifies ε with the full suppression. The same symbol is
  used as (a) the whole EM/gravity ratio, (b) one factor in it, and (c) the bind–unbind asymmetry
  fraction, without establishing these coincide.
- **Fix direction:** Fix ε's definition (asymmetry fraction), then state the relation between ε
  and the 10⁻⁴³ ratio explicitly, with the geometric factors named.

### Mo4 — "For all proposed experiments, see Paper 1" (and "complete mathematical summary, see Paper 1") is backwards — STILL PRESENT
- **Location:** Lines 768 and 776.
- **Why wrong:** By the series' own design, Paper 1 is intentionally lean: proposed experiments,
  open questions, and per-topic math summaries live *only* in the companion papers. Paper 1
  contains no proposed-experiments compendium. These pointers survived the 720541c cross-ref
  cleanup and send readers to content that does not exist.
- **Fix direction:** Delete both sentences or repoint to the actual companion papers.

### Mo5 — Coverage gap: no perihelion precession, no Shapiro delay, and massive-particle geodesics never established — STILL PRESENT
- **Location:** §2.1.1 (lines 393–396): "All predictions of the Schwarzschild geometry —
  including gravitational lensing, time dilation, and the event horizon — follow directly from
  this acoustic metric."
- **Why wrong:** The acoustic (Painlevé–Gullstrand) metric governs *wave* propagation in the
  medium; in analog-gravity systems only the sound/light sector sees the acoustic metric, and
  nothing in the paper shows that massive bodies follow timelike geodesics of it. Yet the two
  classic solar-system tests that probe timelike/null geodesics beyond lensing — Mercury's
  perihelion precession (42.98″/century) and the Shapiro delay (Cassini, 2.3×10⁻⁵) — are never
  computed or even mentioned. "All predictions ... follow directly" is an overclaim resting on the
  photon sector only.
- **Fix direction:** Either derive the massive-particle equation of motion from the framework
  (drag by inflow → geodesics of the PG metric would give both tests for free, since the metric is
  Schwarzschild) or scope the claim to wave phenomena and add perihelion/Shapiro to Open Questions.

### Mo6 — Newtonian force-law paragraph is dimensionally incoherent and the 1/r² is asserted, not derived — STILL PRESENT
- **Location:** §1.3 (lines 125–127): "The total force on a unit of mass in m₂ from all units in
  m₁ is m₁G. Summed across all units of m₂, the force at zero radius becomes Gm₁m₂. Since the
  pressure wave dissipates radially, the force at distance r becomes Gm₁m₂/r²."
- **Why wrong:** "m₁G" and "Gm₁m₂" are not forces (Gm₁m₂ has units m³·kg·s⁻²); "force at zero
  radius" is undefined (and would diverge). The 1/r² falloff is attributed to radial dissipation
  of the pressure wave, but radial dilution gives 1/r² in *intensity/energy flux*; that the
  time-averaged attractive *force* inherits the same law is asserted, not shown.
- **Fix direction:** Recast as: each atom sources a fixed outgoing asymmetric flux; the
  time-averaged pressure deficit at r scales as 1/r² by flux conservation; force = deficit
  gradient coupling × cross-section — with dimensions carried through.

### Mo7 — LAGEOS frame-dragging "~10% precision" reports a contested claim without caveat — STILL PRESENT
- **Location:** Lines 319–321 and 559–560, citing Ciufolini & Pavlis (2004).
- **Why wrong:** The 10% error budget is the authors' own claim; independent analyses (Iorio,
   2005–2011) argue the realistic uncertainty is 20–45% due to geopotential (J₂, J₄) model
  errors. The later LARES results improved this, but the paper cites only the contested 2004
  number as a flat confirmation.
- **Fix direction:** "confirmed frame dragging at the ~10% level (claimed; independent estimates
  20–45%)," or cite LARES (Ciufolini et al. 2016/2019) for a firmer figure.

### Mo8 — Internal tension: gravity's mechanism is a time-averaged pressure deficit, but the paper's Bernoulli result says ΔP = Δρ = 0 exactly — NEW (previously unenumerated)
- **Location:** §1.2 (lines 104–107: "time-averaged effect is therefore a net reduction in
  pressure near the source — a persistent inward pull") vs. Math Summary (lines 851–854:
  "Bernoulli's equation for free-fall inflow gives Δρ/ρ_A = 0 exactly") and lines 159–160,
  372–373, 823–827.
- **Why wrong:** With the logarithmic EoS, compressible Bernoulli gives ∫dP/ρ = −K_A/ρ, and for
  free fall (½v² + Φ = 0) this yields ρ = const *and therefore P = const* — the paper's own
  steady-state analysis leaves no pressure deficit. But §1.2 grounds attraction in exactly such a
  deficit. The two pictures (static low-pressure region pulling matter in vs. zero-perturbation
  free-fall inflow advecting matter in) are never reconciled, and the actual force-transmission
  mechanism to a *static* massive body (which is not comoving with the inflow) is left implicit.
  This connects directly to Mo5.
- **Fix direction:** State explicitly that the force on matter is momentum transfer from the
  inflow (drag/advection), with the "pressure deficit" language confined to the microscopic
  cycle; or compute the residual O(v²/c²) pressure perturbation and show it is what couples.

---

## Minor Findings

### Mi1 — GW170817 speed bound stated as symmetric |Δc/c| < 10⁻¹⁵
- **Location:** Line 543. The published joint bound (ApJL 848, L13) is
  −3×10⁻¹⁵ ≤ Δv/v ≤ +7×10⁻¹⁶; the symmetric "<10⁻¹⁵" overstates the lower side by 3×.

### Mi2 — Sign convention mixed in GP-B comparison
- **Location:** Lines 307, 314–317, 523, 558–559. Prediction quoted as +39.3, measurement as
  −37.2 ± 7.2, GR as −39.2, in the same comparisons. The sign is the west–east direction
  convention; pick one sign throughout. (Agreement arithmetic itself is right: 0.29σ.)

### Mi3 — "lucid boom"
- **Location:** Lines 369–370. The intended coinage for the Cherenkov analogy is presumably
  "luminal boom" (standard informal term: "photonic/luminal boom"). "Lucid boom" is a malapropism.

### Mi4 — svancara2024 overstated and bibliographically incomplete
- **Location:** Lines 741–743, 950–953. The Švančara et al. paper reports "rotating curved
  spacetime signatures" (analog ergoregion physics of interface waves on a giant He-II vortex),
  not an "observation of Kerr black hole geometry." Bib entry lacks volume/pages: Nature **628**,
  66–72 (2024).

### Mi5 — Energy–time uncertainty attributed to Heisenberg 1927
- **Location:** Lines 129–134, 944–947. Heisenberg 1927 derives the position–momentum relation;
  the rigorous energy–time relation is Mandelstam–Tamm (1945), and its virtual-pair-lifetime
  reading is heuristic folklore, not a theorem. Attribution is stale, and the ΔE·Δt ≥ ℏ/2
  "lifetime" usage should be flagged as heuristic.

### Mi6 — Healing-length table rounding
- **Location:** Line 792 vs. Eq. (line 802). ξ = ℏ/(m_A c√2) gives 0.279 fm at 500 MeV and
  0.164 fm at 850 MeV; the table's range "0.17–0.28 fm" should be 0.16–0.28 fm (or the mass range
  tightened). Trivial, but the table claims these are derived quantities.

### Mi7 — Fresnel drag claim: "exact across materials with density ratios up to ~6:1"
- **Location:** Lines 833–835. The Fresnel coefficient 1 − 1/n² is not exact — Zeeman measured
  the Lorentz dispersion correction (λ dn/dλ term); and the "6:1 density ratio" provenance is
  unclear (classic drag experiments used water, CS₂, glass). Overstates precision of support.

### Mi8 — "Velocity time dilation ... spanning 10⁻⁶c to 0.9994c (precision ~10⁻⁸)"
- **Location:** Lines 831–832. Conflates two experiments: ~10⁻⁸–10⁻⁹ precision is Ives–Stilwell
  type at β ≈ 0.06–0.34 (Botermann 2014: 2×10⁻⁹); the 0.9994c point is the CERN muon storage
  ring at ~10⁻³ precision. Pairing the extreme β with the extreme precision misleads.

### Mi9 — "the Bernoulli analysis below" points to a statement, not an analysis
- **Location:** Lines 372–373 (also invoked at 159–160, 627, 824). No Bernoulli derivation
  appears anywhere in this paper; the math summary (lines 851–854) only states the result. Either
  include the three-line derivation (∫dP/ρ + ½v² + Φ = const with the log EoS) or cite the
  companion paper that contains it.

---

## Prior-Review Reconciliation

Note: the prior review file `reviews/Paper-3-Review.md` was not found on disk at review time;
reconciliation is against the 2026-06-11 findings as summarized in the review-tracking notes.

| Prior finding | Status after 720541c |
|---|---|
| C1 — GWs as compression/scalar waves vs GW170817 polarization | **Still present** (lines 73–75, 540–545, 639–642 unchanged) |
| M1 — Gravitomagnetic factor-2 double-count (chain → 19.7, not 39.3) | **Still present** (Eqs. 5–7 unchanged; recomputed 19.65 vs 39.30) |
| M2 — Abstract claims to derive G vs Open Question 1 | **Still present** (lines 52, 587) |
| M3 — G ∝ ε·ρ_A·ψ², ψ undefined, circular provenance | **Still present**; the dangling prose pointer "Unification of Force Constants section" (line 156) was NOT among the four refs fixed |
| M4 — Hawking T_H bare formula, mechanism actually in Paper 6 | **Still present** (lines 893–899) |
| Mo — bertotti2003 miscited for deflection interferometry | **Still present** (lines 418, 549) |
| Mo — Vacuum-catastrophe account differs from Paper 1's | **Still present** |
| Mo — ε bookkeeping ambiguity (whole 10⁻⁴³ vs one factor) | **Still present** (lines 329 vs 884–891) |
| Mo — "For all proposed experiments, see Paper 1" backwards | **Still present** (lines 768, 776) |
| Mo — No perihelion precession, no Shapiro delay, massive geodesics unestablished | **Still present** |
| Dangling `\ref`s to nonexistent sections (force-constants, black-holes, magnetism, qss) | **Fixed** in 720541c (converted to Paper 1/6/4/7 citations); missing `otto-quantum` bibitem **fixed** |
| Footnote/Tajmar-item axial-oscillation language | **Superseded** by spin-phase-current language (consistent with Paper 4's spin-channel revision; no accuracy change) |

New in this pass: Mo8 (pressure-deficit mechanism vs ΔP = 0 Bernoulli steady state).

## Verified Sound

Recomputed or checked this pass, all correct:
- **GP-B numerics end-to-end:** J_⊕ = I·ω = 8.034×10³⁷ × 7.2921×10⁻⁵ = 5.86×10³³ kg·m²/s;
  R = 6371 + 642 = 7013 km; cos(16.84°) = 0.957 (IM Pegasi declination correct);
  GJ/(2c²R³)·cosδ = 39.30 mas/yr; 1 mas = 4.848×10⁻⁹ rad; (39.3−37.2)/7.2 = 0.29σ.
  (The formula's *provenance* within the paper is the M1 problem; the number itself is right.)
- **ε arithmetic:** ke²/(Gm_e²) = 4.166×10⁴² (paper: 4.17×10⁴²); inverse 2.40×10⁻⁴³ ~ 10⁻⁴³.
- **Painlevé–Gullstrand consistency:** v_in(r_s) = c algebra; δt/t = v_in²/2c² = GM/rc²;
  ½ρv_in² = ρGM/r energy balance; PG form equivalent to Schwarzschild for the wave sector.
- **Lensing:** total deflection 4GM/(r₀c²) is the correct GR value; the 2+2 advection/time-delay
  split is a legitimate decomposition in the PG/river picture.
- **Log EoS claims:** P = K_A ln(ρ/ρ₀) ⇒ K = ρ dP/dρ = K_A (constant), and constancy of K forces
  the log form — the "unique form" claim is correct.
- **T_H formula:** standard Hawking value; and the acoustic route κ = c⁴/4GM ⇒
  T_H = ℏc³/8πGMk_B checks exactly (6.17×10⁻⁸ K for M_⊙) — see M4 fix suggestion.
- **Table self-consistency:** K_A = ρ_A c² gives 9×10²⁷–9×10²⁸ ≈ 10²⁸–10²⁹ J/m³ ✓;
  ξ = ℏ/(m_A c√2) reproduces the quoted range to rounding (see Mi6).
- **Refractive-index experiment internal math:** ρ → n²ρ with fixed K_A gives c/n ✓;
  Δf/f = (n₂−n₁)/n₂ from clock rate ∝ c/n ✓.
- **Bibliography details** (as bibliographic records): wilson2011 (Nature 479, 376), everitt2011
  (PRL 106, 221101), ligo2016 (PRL 116, 061102), gw170817 (ApJL 848, L13), Ciufolini2004
  (Nature 431, 958), eddington1920 (Phil Trans A 220, 291), heisenberg1927 (Z. Phys. 43, 172),
  bertotti2003 (Nature 425, 374 — correct record, misused per Mo1). tajmar2024 (Sci Rep 14,
  19427) and hathaway2021 (Physics 3, 160) plausible, not independently verifiable offline.

## Cross-Paper Dependencies

- **Paper 1:** v²/c² universality (line 253) and the force-constant unification underlying
  G ∝ ε·ρ_A·ψ² (M3) — but Paper 1 reportedly attributes that derivation *back* to Paper 3;
  circular. Vacuum-catastrophe account conflicts (Mo2). The "see Paper 1" pointers for
  experiments/math summary are backwards (Mo4).
- **Paper 4:** The gravitomagnetic analogy now inherits the spin-phase-current definition of the
  E-field flow vector (footnote, lines 256–260) and the Tajmar null-result explanation
  (lines 566–573). Note a latent tension: this paper repeatedly states light is a *compression*
  wave (lines 97–98, 475, 545), while the revised Papers 4/7 spin-channel framework treats EM
  phenomena as spin-phase (transverse) dynamics — the photon's wave type should be stated
  consistently series-wide (also flagged in the Paper 2 review as the seeded photon-speed/type
  contradiction, and it is the pivot for fixing C1).
- **Paper 6:** Black-hole frame dragging and two-fluid inflow (lines 331, 511–515); Hawking
  mechanism actually lives there (M4); GW polarization fix would draw on Paper 6's spin-nematic
  Goldstone modes (C1).
- **Paper 7:** Log-EoS uniqueness now correctly cited to Paper 7 (line 815, fixed in 720541c).
- **Paper 2:** E = mc² connection (§1.5) and velocity time dilation experiments (lines 831–832)
  depend on Paper 2's compression-energy derivation, which has its own critical finding (C1 of
  the Paper 2 review) on the unit-strain step.
