import HarmonicAnalysisHypergroupsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace HarmonicAnalysisHypergroupsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.plancherelIdentity ∨ A.plancherelIdentity

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact Or.inl A.conclusion.2.2

end HarmonicAnalysisHypergroupsCanonicalLaneLean
end HautevilleHouse