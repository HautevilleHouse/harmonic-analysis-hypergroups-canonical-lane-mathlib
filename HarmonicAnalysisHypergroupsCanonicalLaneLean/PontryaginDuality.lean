import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HarmonicAnalysisHypergroupsCanonicalLaneLean.HypergroupStructure

namespace HautevilleHouse
namespace HarmonicAnalysisHypergroupsCanonicalLaneLean

structure PontryaginDuality (H : Type u) (G : Hypergroup H) where
  dualGroup : Type v
  dualConvolution : dualGroup → dualGroup → dualGroup
  fourierTransform : H → dualGroup → ℂ
  inversionFormula : Prop
  planarcherelTheorem : Prop
  dualityPairing : Prop
  inversionFormulaTerm : inversionFormula
  planarcherelTheoremTerm : planarcherelTheorem
  dualityPairingTerm : dualityPairing

structure PontryaginDualityEvidence (H : Type u) (G : Hypergroup H) (P : PontryaginDuality H G) where
  inversionFormulaClosed : P.inversionFormula
  planarcherelTheoremClosed : P.planarcherelTheorem
  dualityPairingClosed : P.dualityPairing

def PontryaginDualityClosed (H : Type u) (G : Hypergroup H) (P : PontryaginDuality H G) : Prop :=
  P.inversionFormula ∧ P.planarcherelTheorem ∧ P.dualityPairing

theorem pontryagin_duality_closed_from_evidence (H : Type u) (G : Hypergroup H) (P : PontryaginDuality H G) (E : PontryaginDualityEvidence H G P) : PontryaginDualityClosed H G P := by
  exact And.intro E.inversionFormulaClosed (And.intro E.planarcherelTheoremClosed E.dualityPairingClosed)

end HarmonicAnalysisHypergroupsCanonicalLaneLean
end HautevilleHouse