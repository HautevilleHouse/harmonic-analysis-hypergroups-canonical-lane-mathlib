import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHypergroupsCanonicalLaneLean

structure Hypergroup (G : Type u) where
  carrier : Set G
  convolution : G → G → G
  involution : G → G
  identity : G
  associativity : Prop
  identityProperty : Prop
  involutionProperty : Prop
  positivity : Prop

structure HypergroupAlgebra (H : Hypergroup G) where
  convolutionAlgebra : Type v
  involutiveStructure : Prop
  positivityPreserving : Prop
  normedSpace : Prop
  
end HarmonicAnalysisHypergroupsCanonicalLaneLean
end HautevilleHouse