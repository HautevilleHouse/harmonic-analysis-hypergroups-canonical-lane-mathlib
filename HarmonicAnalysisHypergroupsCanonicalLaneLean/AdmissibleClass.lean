import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHypergroupsCanonicalLaneLean

structure AdmissibleClass where
  hypergroup : Hypergroup
  convolutionClosed : Prop
  dualPairingClosed : Prop
  plancherelIdentity : Prop
  conclusion : convolutionClosed ∧ dualPairingClosed ∧ plancherelIdentity

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.convolutionClosed ∧ A.dualPairingClosed ∧ A.plancherelIdentity

end HarmonicAnalysisHypergroupsCanonicalLaneLean
end HautevilleHouse