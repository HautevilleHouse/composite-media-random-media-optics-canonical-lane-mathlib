import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure CompositeMediaAdmittedObject where
  mediumModel : Type u
  effectiveMediumTheory : Prop
  homogenizationLimit : Prop
  conclusion : effectiveMediumTheory ∧ homogenizationLimit

structure CompositeMediaEndgameState where
  object : CompositeMediaAdmittedObject

def CompositeMediaWitnessClosed (O : CompositeMediaAdmittedObject) : Prop :=
  O.conclusion

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse