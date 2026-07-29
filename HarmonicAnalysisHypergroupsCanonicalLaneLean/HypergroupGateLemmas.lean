import HautevilleHouse.HarmonicAnalysisHypergroupsCanonicalLaneLean.HypergroupBridgeLemmas

namespace HautevilleHouse
namespace HarmonicAnalysisHypergroupsCanonicalLaneLean

def gateClosed (H : AdmittedHypergroup) : Prop :=
  H.remainderRecorded

theorem gate_from_admissible_hypergroup (H : AdmittedHypergroup) :
    gateClosed H := by
  exact H.gateWitness.elim (fun h => h) (fun h => h)

end HautevilleHouse
end HarmonicAnalysisHypergroupsCanonicalLaneLean