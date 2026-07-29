import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure HolographyPackage where
  interferencePattern : Prop
  referenceWave : Prop
  objectWave : Prop
  recordingMedium : Prop
  reconstructionProcess : Prop
  resolutionLimit : Prop

structure HolographyEvidence (H : HolographyPackage) where
  interferencePatternClosed : H.interferencePattern
  referenceWaveClosed : H.referenceWave
  objectWaveClosed : H.objectWave
  recordingMediumClosed : H.recordingMedium
  reconstructionProcessClosed : H.reconstructionProcess
  resolutionLimitClosed : H.resolutionLimit

def HolographyClosed (H : HolographyPackage) : Prop :=
  H.interferencePattern ∧ H.referenceWave ∧ H.objectWave ∧ H.recordingMedium ∧ H.reconstructionProcess ∧ H.resolutionLimit

theorem holography_closed_from_evidence (H : HolographyPackage) (E : HolographyEvidence H) :
    HolographyClosed H := by
  exact And.intro E.interferencePatternClosed
    (And.intro E.referenceWaveClosed
      (And.intro E.objectWaveClosed
        (And.intro E.recordingMediumClosed
          (And.intro E.reconstructionProcessClosed E.resolutionLimitClosed))))

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse