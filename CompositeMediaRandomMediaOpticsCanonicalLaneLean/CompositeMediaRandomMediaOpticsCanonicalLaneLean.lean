import canonicalLaneMathlib.AdmissibleClass
import CompositeMediaRandomMediaOpticsCanonicalLaneLean.MaxwellEquations
import CompositeMediaRandomMediaOpticsCanonicalLaneLean.DiffractionTheory
import CompositeMediaRandomMediaOpticsCanonicalLaneLean.Holography
import CompositeMediaRandomMediaOpticsCanonicalLaneLean.LaserTheory
import CompositeMediaRandomMediaOpticsCanonicalLaneLean.Metamaterials

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

def ConstrainedOpticsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_optics_endgame (A : AdmissibleClass) :
    ConstrainedOpticsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse