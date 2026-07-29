import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

def CompositeMediaAdmissibleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem composite_media_admissible_endgame (A : AdmissibleClass) :
    CompositeMediaAdmissibleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse