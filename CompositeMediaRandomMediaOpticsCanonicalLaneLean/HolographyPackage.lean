import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure HolographyPackage where
  referenceWave : Type u
  objectWave : Type v
  interferencePattern : Type w
  reconstructedImage : Type x
  recordingMedium : Prop
  reconstructionLight : Prop
  phaseConjugation : Prop

structure HolographyEvidence (H : HolographyPackage) where
  recordingMediumClosed : H.recordingMedium
  reconstructionLightClosed : H.reconstructionLight
  phaseConjugationClosed : H.phaseConjugation

def HolographyClosed (H : HolographyPackage) : Prop :=
  H.recordingMedium ∧ H.reconstructionLight ∧ H.phaseConjugation

theorem holography_closed_from_evidence (H : HolographyPackage) (E : HolographyEvidence H) :
    HolographyClosed H := by
  exact And.intro E.recordingMediumClosed (And.intro E.reconstructionLightClosed E.phaseConjugationClosed)

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse