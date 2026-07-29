import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HarmonicAnalysisHypergroupsCanonicalLaneLean.HypergroupStructure

namespace HautevilleHouse
namespace HarmonicAnalysisHypergroupsCanonicalLaneLean

structure StochasticCompleteness (H : Type u) (G : Hypergroup H) where
  transitionProbability : H → Set H → ℝ
  conservationCondition : Prop
  existenceStationaryMeasure : Prop
  conservationConditionTerm : conservationCondition
  existenceStationaryMeasureTerm : existenceStationaryMeasure

structure StochasticCompletenessEvidence (H : Type u) (G : Hypergroup H) (S : StochasticCompleteness H G) where
  conservationConditionClosed : S.conservationCondition
  existenceStationaryMeasureClosed : S.existenceStationaryMeasure

def StochasticCompletenessClosed (H : Type u) (G : Hypergroup H) (S : StochasticCompleteness H G) : Prop :=
  S.conservationCondition ∧ S.existenceStationaryMeasure

theorem stochastic_completeness_closed_from_evidence (H : Type u) (G : Hypergroup H) (S : StochasticCompleteness H G) (E : StochasticCompletenessEvidence H G S) : StochasticCompletenessClosed H G S := by
  exact And.intro E.conservationConditionClosed E.existenceStationaryMeasureClosed

end HarmonicAnalysisHypergroupsCanonicalLaneLean
end HautevilleHouse