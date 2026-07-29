import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHypergroupsCanonicalLaneLean

structure DualHypergroup (H : Hypergroup G) where
  dualCarrier : Type u
  dualConvolution : dualCarrier → dualCarrier → dualCarrier
  dualInvolution : dualCarrier → dualCarrier
  dualIdentity : dualCarrier
  dualAssociativity : Prop
  dualIdentityProperty : Prop
  dualInvolutionProperty : Prop
  dualPositivity : Prop
  pontryaginDuality : Prop

structure DualHypergroupEvidence (D : DualHypergroup H) where
  dualAssociativityClosed : D.dualAssociativity
  dualIdentityPropertyClosed : D.dualIdentityProperty
  dualInvolutionPropertyClosed : D.dualInvolutionProperty
  dualPositivityClosed : D.dualPositivity
  pontryaginDualityClosed : D.pontryaginDuality

def DualHypergroupClosed (D : DualHypergroup H) : Prop :=
  D.dualAssociativity ∧ D.dualIdentityProperty ∧ D.dualInvolutionProperty ∧ D.dualPositivity ∧ D.pontryaginDuality

theorem dual_hypergroup_closed_from_evidence (D : DualHypergroup H) (E : DualHypergroupEvidence D) : DualHypergroupClosed D := by
  exact And.intro E.dualAssociativityClosed
    (And.intro E.dualIdentityPropertyClosed
      (And.intro E.dualInvolutionPropertyClosed
        (And.intro E.dualPositivityClosed E.pontryaginDualityClosed)))

end HarmonicAnalysisHypergroupsCanonicalLaneLean
end HautevilleHouse