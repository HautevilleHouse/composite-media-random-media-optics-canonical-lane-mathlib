import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure MetamaterialsPackage where
  effectivePermittivity : Prop
  effectivePermeability : Prop
  negativeRefraction : Prop
  subwavelengthImaging : Prop
  homogenizationLimit : Prop
  resonantBehavior : Prop

structure MetamaterialsEvidence (M : MetamaterialsPackage) where
  effectivePermittivityClosed : M.effectivePermittivity
  effectivePermeabilityClosed : M.effectivePermeability
  negativeRefractionClosed : M.negativeRefraction
  subwavelengthImagingClosed : M.subwavelengthImaging
  homogenizationLimitClosed : M.homogenizationLimit
  resonantBehaviorClosed : M.resonantBehavior

def MetamaterialsClosed (M : MetamaterialsPackage) : Prop :=
  M.effectivePermittivity ∧ M.effectivePermeability ∧ M.negativeRefraction ∧ M.subwavelengthImaging ∧ M.homogenizationLimit ∧ M.resonantBehavior

theorem metamaterials_closed_from_evidence (M : MetamaterialsPackage) (E : MetamaterialsEvidence M) :
    MetamaterialsClosed M := by
  exact And.intro E.effectivePermittivityClosed
    (And.intro E.effectivePermeabilityClosed
      (And.intro E.negativeRefractionClosed
        (And.intro E.subwavelengthImagingClosed
          (And.intro E.homogenizationLimitClosed E.resonantBehaviorClosed))))

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse