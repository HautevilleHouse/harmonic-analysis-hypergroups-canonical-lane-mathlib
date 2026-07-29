import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHypergroupsCanonicalLaneLean

structure HypergroupStructure where
  carrier : Type u
  measure : carrier → ℝ
  convolution : carrier → carrier → carrier
  involution : carrier → carrier
  identity : carrier
  associativity : ∀ a b c : carrier, convolution (convolution a b) c = convolution a (convolution b c)
  identityLeft : ∀ a : carrier, convolution identity a = a
  identityRight : ∀ a : carrier, convolution a identity = a
  involutionInvolutive : ∀ a : carrier, involution (involution a) = a
  convolutionInvolution : ∀ a b : carrier, involution (convolution a b) = convolution (involution b) (involution a)

structure AdmittedHypergroup (A : AdmissibleClass) where
  hypergroup : HypergroupStructure
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def hypergroupAdmittedClosure (H : AdmittedHypergroup) : Prop :=
  H.endpointSatisfied ∧ H.remainderRecorded

end HautevilleHouse
end HarmonicAnalysisHypergroupsCanonicalLaneLean