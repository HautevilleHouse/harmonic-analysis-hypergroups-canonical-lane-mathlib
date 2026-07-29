import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HarmonicAnalysisHypergroupsCanonicalLaneLean.HypergroupStructure
import HautevilleHouse.HarmonicAnalysisHypergroupsCanonicalLaneLean.PlancherelTheorem

namespace HautevilleHouse
namespace HarmonicAnalysisHypergroupsCanonicalLaneLean

def ConstrainedHypergroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hypergroup_endgame (A : AdmissibleClass) :
    ConstrainedHypergroupClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HarmonicAnalysisHypergroupsCanonicalLaneLean
end HautevilleHouse