import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure LaserTheoryPackage where
  populationInversion : Prop
  stimulatedEmission : Prop
  spontaneousEmission : Prop
  opticalResonator : Prop
  thresholdCondition : Prop
  lasingMode : Prop
  coherenceProperties : Prop

structure LaserTheoryEvidence (L : LaserTheoryPackage) where
  populationInversionClosed : L.populationInversion
  stimulatedEmissionClosed : L.stimulatedEmission
  spontaneousEmissionClosed : L.spontaneousEmission
  opticalResonatorClosed : L.opticalResonator
  thresholdConditionClosed : L.thresholdCondition
  lasingModeClosed : L.lasingMode
  coherencePropertiesClosed : L.coherenceProperties

def LaserTheoryClosed (L : LaserTheoryPackage) : Prop :=
  L.populationInversion ∧ L.stimulatedEmission ∧ L.spontaneousEmission ∧ L.opticalResonator ∧ L.thresholdCondition ∧ L.lasingMode ∧ L.coherenceProperties

theorem laser_theory_closed_from_evidence (L : LaserTheoryPackage) (E : LaserTheoryEvidence L) :
    LaserTheoryClosed L := by
  exact And.intro E.populationInversionClosed
    (And.intro E.stimulatedEmissionClosed
      (And.intro E.spontaneousEmissionClosed
        (And.intro E.opticalResonatorClosed
          (And.intro E.thresholdConditionClosed
            (And.intro E.lasingModeClosed E.coherencePropertiesClosed)))))

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse