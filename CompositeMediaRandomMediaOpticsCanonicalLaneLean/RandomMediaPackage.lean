import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure RandomMediaPackage where
  scatteringPotential : Type u
  correlationFunction : Type v
  meanFreePath : Prop
  transportMeanFreePath : Prop
  localizationLength : Prop
  diffusionApproximation : Prop

structure RandomMediaEvidence (R : RandomMediaPackage) where
  meanFreePathClosed : R.meanFreePath
  transportMeanFreePathClosed : R.transportMeanFreePath
  localizationLengthClosed : R.localizationLength
  diffusionApproximationClosed : R.diffusionApproximation

def RandomMediaClosed (R : RandomMediaPackage) : Prop :=
  R.meanFreePath ∧ R.transportMeanFreePath ∧ R.localizationLength ∧ R.diffusionApproximation

theorem random_media_closed_from_evidence (R : RandomMediaPackage) (E : RandomMediaEvidence R) :
    RandomMediaClosed R := by
  exact And.intro E.meanFreePathClosed
    (And.intro E.transportMeanFreePathClosed
      (And.intro E.localizationLengthClosed E.diffusionApproximationClosed))

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse