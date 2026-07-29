import CompositeMediaRandomMediaOpticsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CompositeMediaWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse