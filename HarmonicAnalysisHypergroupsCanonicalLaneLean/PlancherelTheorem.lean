import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.HarmonicAnalysisHypergroupsCanonicalLaneLean.HypergroupStructure

namespace HautevilleHouse
namespace HarmonicAnalysisHypergroupsCanonicalLaneLean

structure PlancherelPackage {X : Type} [TopologicalSpace X] (H : HypergroupStructure X) where
  dualObject : Type u
  plancherelMeasure : dualObject → ℝ
  plancherelTransform : (X → ℂ) → (dualObject → ℂ)
  isometryProperty : Prop
  inversionFormula : Prop
  measureRegular : Prop

structure PlancherelEvidence (P : PlancherelPackage H) where
  isometryPropertyClosed : P.isometryProperty
  inversionFormulaClosed : P.inversionFormula
  measureRegularClosed : P.measureRegular

def PlancherelClosed (P : PlancherelPackage H) : Prop :=
  P.isometryProperty ∧ P.inversionFormula ∧ P.measureRegular

theorem plancherel_closed_from_evidence (P : PlancherelPackage H) (E : PlancherelEvidence P) : PlancherelClosed P := by
  exact And.intro E.isometryPropertyClosed
    (And.intro E.inversionFormulaClosed E.measureRegularClosed)

end HarmonicAnalysisHypergroupsCanonicalLaneLean
end HautevilleHouse