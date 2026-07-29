import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure HolographicImagingPackage where
  referenceWave : Type u
  objectWave : Type v
  interferencePattern : Type w
  recordingMedium : Type x
  reconstructionIllumination : Type y
  imageFormation : Prop
  phaseRecovery : Prop
  resolutionLimit : Prop

structure HolographicImagingEvidence (H : HolographicImagingPackage) where
  imageFormationClosed : H.imageFormation
  phaseRecoveryClosed : H.phaseRecovery
  resolutionLimitClosed : H.resolutionLimit

def HolographicImagingClosed (H : HolographicImagingPackage) : Prop :=
  H.imageFormation ∧ H.phaseRecovery ∧ H.resolutionLimit

theorem holographic_imaging_closed_from_evidence (H : HolographicImagingPackage)
    (E : HolographicImagingEvidence H) : HolographicImagingClosed H := by
  exact And.intro E.imageFormationClosed (And.intro E.phaseRecoveryClosed E.resolutionLimitClosed)

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse