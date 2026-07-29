import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHypergroupsCanonicalLaneLean

structure PositiveDefiniteFunction (H : Hypergroup G) where
  carrier : H.carrier → ℂ
  positiveDefinite : Prop
  bounded : Prop
  hermitian : Prop

structure PositiveDefiniteEvidence (φ : PositiveDefiniteFunction H) where
  positiveDefiniteClosed : φ.positiveDefinite
  boundedClosed : φ.bounded
  hermitianClosed : φ.hermitian

def PositiveDefiniteClosed (φ : PositiveDefiniteFunction H) : Prop :=
  φ.positiveDefinite ∧ φ.bounded ∧ φ.hermitian

theorem positive_definite_closed_from_evidence (φ : PositiveDefiniteFunction H) (E : PositiveDefiniteEvidence φ) : PositiveDefiniteClosed φ := by
  exact And.intro E.positiveDefiniteClosed (And.intro E.boundedClosed E.hermitianClosed)

end HarmonicAnalysisHypergroupsCanonicalLaneLean
end HautevilleHouse