import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure HolographyReconstructionPackage where
  referenceWave : Type u
  objectWave : Type v
  interferencePattern : Type w
  recordingMedium : Type x
  illuminationWave : Prop
  reconstructionWave : Prop
  phaseRecovery : Prop
  intensityDistribution : Prop
  imageFormation : Prop
  resolutionLimit : Prop
  noiseSuppression : Prop

structure HolographyReconstructionEvidence
    (H : HolographyReconstructionPackage) where
  illuminationWaveClosed : H.illuminationWave
  reconstructionWaveClosed : H.reconstructionWave
  phaseRecoveryClosed : H.phaseRecovery
  intensityDistributionClosed : H.intensityDistribution
  imageFormationClosed : H.imageFormation
  resolutionLimitClosed : H.resolutionLimit
  noiseSuppressionClosed : H.noiseSuppression

def HolographyReconstructionClosed (H : HolographyReconstructionPackage) : Prop :=
  H.illuminationWave ∧ H.reconstructionWave ∧ H.phaseRecovery ∧
  H.intensityDistribution ∧ H.imageFormation ∧ H.resolutionLimit ∧ H.noiseSuppression

theorem holography_reconstruction_closed_from_evidence
    (H : HolographyReconstructionPackage)
    (E : HolographyReconstructionEvidence H) : HolographyReconstructionClosed H := by
  exact And.intro E.illuminationWaveClosed
    (And.intro E.reconstructionWaveClosed
      (And.intro E.phaseRecoveryClosed
        (And.intro E.intensityDistributionClosed
          (And.intro E.imageFormationClosed
            (And.intro E.resolutionLimitClosed E.noiseSuppressionClosed)))))

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse