import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HarmonicAnalysisHypergroupsCanonicalLaneLean.HypergroupStructure

namespace HautevilleHouse
namespace HarmonicAnalysisHypergroupsCanonicalLaneLean

structure SphericalFunction (H : Type u) (G : Hypergroup H) where
  phi : H → ℂ
  eigenvalueEquation : Prop
  multiplicativeProperty : Prop
  normalizationCondition : Prop
  eigenvalueEquationTerm : eigenvalueEquation
  multiplicativePropertyTerm : multiplicativeProperty
  normalizationConditionTerm : normalizationCondition

structure SphericalFunctionEvidence (H : Type u) (G : Hypergroup H) (S : SphericalFunction H G) where
  eigenvalueEquationClosed : S.eigenvalueEquation
  multiplicativePropertyClosed : S.multiplicativeProperty
  normalizationConditionClosed : S.normalizationCondition

def SphericalFunctionClosed (H : Type u) (G : Hypergroup H) (S : SphericalFunction H G) : Prop :=
  S.eigenvalueEquation ∧ S.multiplicativeProperty ∧ S.normalizationCondition

theorem spherical_function_closed_from_evidence (H : Type u) (G : Hypergroup H) (S : SphericalFunction H G) (E : SphericalFunctionEvidence H G S) : SphericalFunctionClosed H G S := by
  exact And.intro E.eigenvalueEquationClosed (And.intro E.multiplicativePropertyClosed E.normalizationConditionClosed)

end HarmonicAnalysisHypergroupsCanonicalLaneLean
end HautevilleHouse