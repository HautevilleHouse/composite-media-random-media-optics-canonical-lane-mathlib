import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure MetamaterialsPackage where
  subwavelengthStructure : Type u
  effectivePermittivity : Type v
  effectivePermeability : Type w
  negativeRefractiveIndex : Prop
  homogenizationValid : Prop
  bianisotropicCoupling : Prop

structure MetamaterialsEvidence (M : MetamaterialsPackage) where
  negativeRefractiveIndexClosed : M.negativeRefractiveIndex
  homogenizationValidClosed : M.homogenizationValid
  bianisotropicCouplingClosed : M.bianisotropicCoupling

def MetamaterialsClosed (M : MetamaterialsPackage) : Prop :=
  M.negativeRefractiveIndex ∧ M.homogenizationValid ∧ M.bianisotropicCoupling

theorem metamaterials_closed_from_evidence (M : MetamaterialsPackage) (E : MetamaterialsEvidence M) :
    MetamaterialsClosed M := by
  exact And.intro E.negativeRefractiveIndexClosed (And.intro E.homogenizationValidClosed E.bianisotropicCouplingClosed)

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse