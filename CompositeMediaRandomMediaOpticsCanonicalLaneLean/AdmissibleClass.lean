import CompositeMediaRandomMediaOpticsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure AdmissibleClass where
  object : CompositeMediaAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CompositeMediaWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse