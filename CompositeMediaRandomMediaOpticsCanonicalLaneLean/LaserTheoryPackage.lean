import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure LaserTheoryPackage where
  gainMedium : Type u
  resonatorCavity : Type v
  populationInversion : Prop
  stimulatedEmission : Prop
  laserThreshold : Prop
  outputBeam : Prop

structure LaserTheoryEvidence (L : LaserTheoryPackage) where
  populationInversionClosed : L.populationInversion
  stimulatedEmissionClosed : L.stimulatedEmission
  laserThresholdClosed : L.laserThreshold
  outputBeamClosed : L.outputBeam

def LaserTheoryClosed (L : LaserTheoryPackage) : Prop :=
  L.populationInversion ∧ L.stimulatedEmission ∧ L.laserThreshold ∧ L.outputBeam

theorem laser_theory_closed_from_evidence (L : LaserTheoryPackage) (E : LaserTheoryEvidence L) :
    LaserTheoryClosed L := by
  exact And.intro E.populationInversionClosed
    (And.intro E.stimulatedEmissionClosed
      (And.intro E.laserThresholdClosed E.outputBeamClosed))

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse