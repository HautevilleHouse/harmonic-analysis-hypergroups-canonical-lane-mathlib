import HautevilleHouse.HarmonicAnalysisHypergroupsCanonicalLaneLean.HypergroupAdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHypergroupsCanonicalLaneLean

structure LevyHinchinPackage (H : AdmittedHypergroup) where
  infinitelyDivisibleMeasures : Type u
  levyHinchinDecomposition : Prop
  gaussianComponent : Prop
  poissonComponent : Prop
  driftComponent : Prop
  decompositionUnique : Prop

structure LevyHinchinEvidence (L : LevyHinchinPackage) where
  levyHinchinDecompositionClosed : L.levyHinchinDecomposition
  gaussianComponentClosed : L.gaussianComponent
  poissonComponentClosed : L.poissonComponent
  driftComponentClosed : L.driftComponent
  decompositionUniqueClosed : L.decompositionUnique

def LevyHinchinClosed (L : LevyHinchinPackage) : Prop :=
  L.levyHinchinDecomposition ∧ L.gaussianComponent ∧ L.poissonComponent ∧ L.driftComponent ∧ L.decompositionUnique

theorem levy_hinchin_closed_from_evidence (L : LevyHinchinPackage) (E : LevyHinchinEvidence L) :
    LevyHinchinClosed L := by
  exact And.intro E.levyHinchinDecompositionClosed
    (And.intro E.gaussianComponentClosed
      (And.intro E.poissonComponentClosed
        (And.intro E.driftComponentClosed E.decompositionUniqueClosed)))

end HautevilleHouse
end HarmonicAnalysisHypergroupsCanonicalLaneLean