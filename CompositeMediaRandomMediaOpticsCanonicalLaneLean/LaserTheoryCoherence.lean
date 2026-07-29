import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure LaserTheoryCoherencePackage where
  gainMedium : Type u
  resonatorCavity : Type v
  pumpingRate : Type w
  populationInversion : Prop
  stimulatedEmission : Prop
  spontaneousEmission : Prop
  cavityModes : Prop
  lasingThreshold : Prop
  outputCoupling : Prop
  coherenceTime : Prop
  linewidth : Prop
  modeLocking : Prop

structure LaserTheoryCoherenceEvidence
    (L : LaserTheoryCoherencePackage) where
  populationInversionClosed : L.populationInversion
  stimulatedEmissionClosed : L.stimulatedEmission
  spontaneousEmissionClosed : L.spontaneousEmission
  cavityModesClosed : L.cavityModes
  lasingThresholdClosed : L.lasingThreshold
  outputCouplingClosed : L.outputCoupling
  coherenceTimeClosed : L.coherenceTime
  linewidthClosed : L.linewidth
  modeLockingClosed : L.modeLocking

def LaserTheoryCoherenceClosed (L : LaserTheoryCoherencePackage) : Prop :=
  L.populationInversion ∧ L.stimulatedEmission ∧ L.spontaneousEmission ∧
  L.cavityModes ∧ L.lasingThreshold ∧ L.outputCoupling ∧
  L.coherenceTime ∧ L.linewidth ∧ L.modeLocking

theorem laser_theory_coherence_closed_from_evidence
    (L : LaserTheoryCoherencePackage)
    (E : LaserTheoryCoherenceEvidence L) : LaserTheoryCoherenceClosed L := by
  exact And.intro E.populationInversionClosed
    (And.intro E.stimulatedEmissionClosed
      (And.intro E.spontaneousEmissionClosed
        (And.intro E.cavityModesClosed
          (And.intro E.lasingThresholdClosed
            (And.intro E.outputCouplingClosed
              (And.intro E.coherenceTimeClosed
                (And.intro E.linewidthClosed E.modeLockingClosed)))))))

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse