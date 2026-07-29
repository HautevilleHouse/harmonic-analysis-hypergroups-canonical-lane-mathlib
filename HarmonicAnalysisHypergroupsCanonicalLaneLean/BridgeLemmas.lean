import HarmonicAnalysisHypergroupsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHypergroupsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.convolutionClosed ∧ A.dualPairingClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.conclusion.1 A.conclusion.2.1

end HarmonicAnalysisHypergroupsCanonicalLaneLean
end HautevilleHouse