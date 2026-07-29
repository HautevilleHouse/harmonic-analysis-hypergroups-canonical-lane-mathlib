import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHypergroupsCanonicalLaneLean

structure HypergroupStructure (X : Type) [TopologicalSpace X] where
  convolution : (X → ℂ) → (X → ℂ) → (X → ℂ)
  identityElement : X
  involution : X → X
  convolutionAssociative : Prop
  involutionInvolutive : Prop
  convolutionContinuous : Prop
  identityHolder : Prop
  involutionContinuous : Prop

structure HypergroupEvidence (H : HypergroupStructure X) where
  convolutionAssociativeClosed : H.convolutionAssociative
  involutionInvolutiveClosed : H.involutionInvolutive
  convolutionContinuousClosed : H.convolutionContinuous
  identityHolderClosed : H.identityHolder
  involutionContinuousClosed : H.involutionContinuous

def HypergroupClosed (H : HypergroupStructure X) : Prop :=
  H.convolutionAssociative ∧ H.involutionInvolutive ∧
  H.convolutionContinuous ∧ H.identityHolder ∧ H.involutionContinuous

theorem hypergroup_closed_from_evidence (H : HypergroupStructure X) (E : HypergroupEvidence H) : HypergroupClosed H := by
  exact And.intro E.convolutionAssociativeClosed
    (And.intro E.involutionInvolutiveClosed
      (And.intro E.convolutionContinuousClosed
        (And.intro E.identityHolderClosed E.involutionContinuousClosed)))

end HarmonicAnalysisHypergroupsCanonicalLaneLean
end HautevilleHouse