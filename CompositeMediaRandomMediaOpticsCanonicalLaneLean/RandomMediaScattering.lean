import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure RandomMediaScatteringPackage where
  refractiveIndexDistribution : Type u
  correlationFunction : Type v
  scatteringMeanFreePath : Type w
  transportMeanFreePath : Type x
  scatteringRegime : Prop
  bornApproximation : Prop
  radiativeTransferEquation : Prop
  diffusionApproximation : Prop
  localizationEffect : Prop
  ensembleAveraging : Prop
  speckleStatistics : Prop

structure RandomMediaScatteringEvidence
    (R : RandomMediaScatteringPackage) where
  scatteringRegimeClosed : R.scatteringRegime
  bornApproximationClosed : R.bornApproximation
  radiativeTransferEquationClosed : R.radiativeTransferEquation
  diffusionApproximationClosed : R.diffusionApproximation
  localizationEffectClosed : R.localizationEffect
  ensembleAveragingClosed : R.ensembleAveraging
  speckleStatisticsClosed : R.speckleStatistics

def RandomMediaScatteringClosed (R : RandomMediaScatteringPackage) : Prop :=
  R.scatteringRegime ∧ R.bornApproximation ∧ R.radiativeTransferEquation ∧
  R.diffusionApproximation ∧ R.localizationEffect ∧ R.ensembleAveraging ∧ R.speckleStatistics

theorem random_media_scattering_closed_from_evidence
    (R : RandomMediaScatteringPackage)
    (E : RandomMediaScatteringEvidence R) : RandomMediaScatteringClosed R := by
  exact And.intro E.scatteringRegimeClosed
    (And.intro E.bornApproximationClosed
      (And.intro E.radiativeTransferEquationClosed
        (And.intro E.diffusionApproximationClosed
          (And.intro E.localizationEffectClosed
            (And.intro E.ensembleAveragingClosed E.speckleStatisticsClosed)))))

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse