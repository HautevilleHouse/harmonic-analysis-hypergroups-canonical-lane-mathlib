import HautevilleHouse.HarmonicAnalysisHypergroupsCanonicalLaneLean.HypergroupAdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHypergroupsCanonicalLaneLean

def bridgeClosed (H : AdmittedHypergroup) : Prop :=
  H.endpointSatisfied

theorem bridge_from_admissible_hypergroup (H : AdmittedHypergroup) :
    bridgeClosed H := by
  exact H.gateWitness.elim (fun h => h) (fun h => h)

end HautevilleHouse
end HarmonicAnalysisHypergroupsCanonicalLaneLean