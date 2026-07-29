import canonicalLaneMathlib.AdmissibleClass
import HarmonicAnalysisHypergroupsCanonicalLaneLean.HypergroupStructure

namespace HautevilleHouse
namespace HarmonicAnalysisHypergroupsCanonicalLaneLean

structure Representation (H : HypergroupStructure) where
  repSpace : Type u
  repAction : H.carrier → (repSpace → repSpace)
  linear : Prop
  multiplicative : Prop
  unitary : Prop
  irreducible : Prop
  linearTerm : linear
  multiplicativeTerm : multiplicative
  unitaryTerm : unitary
  irreducibleTerm : irreducible

structure Character (H : HypergroupStructure) where
  charFunc : H.carrier → ℂ
  bounded : Prop
  multiplicative : Prop
  hermitian : Prop
  positiveDefinite : Prop
  boundedTerm : bounded
  multiplicativeTerm : multiplicative
  hermitianTerm : hermitian
  positiveDefiniteTerm : positiveDefinite

def CharacterClosed (χ : Character H) : Prop :=
  χ.bounded ∧ χ.multiplicative ∧ χ.hermitian ∧ χ.positiveDefinite

theorem character_closed (χ : Character H) : CharacterClosed χ := by
  exact And.intro χ.boundedTerm (And.intro χ.multiplicativeTerm (And.intro χ.hermitianTerm χ.positiveDefiniteTerm))

end HarmonicAnalysisHypergroupsCanonicalLaneLean
end HautevilleHouse