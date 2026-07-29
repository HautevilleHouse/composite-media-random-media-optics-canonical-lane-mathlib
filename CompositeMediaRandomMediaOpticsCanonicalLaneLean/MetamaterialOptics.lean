import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure MetamaterialStructure where
  unitCellGeometry : Type u
  effectivePermittivity : Type v
  effectivePermeability : Type w
  negativeRefraction : Prop
  subwavelengthResolution : Prop
  homogenizationLimit : Prop

structure MetamaterialEvidence (M : MetamaterialStructure) where
  effectivePermittivityClosed : M.effectivePermittivity
  effectivePermeabilityClosed : M.effectivePermeability
  negativeRefractionClosed : M.negativeRefraction
  subwavelengthResolutionClosed : M.subwavelengthResolution
  homogenizationLimitClosed : M.homogenizationLimit

def MetamaterialClosed (M : MetamaterialStructure) : Prop :=
  M.effectivePermittivity ∧ M.effectivePermeability ∧ M.negativeRefraction ∧ M.subwavelengthResolution ∧ M.homogenizationLimit

theorem metamaterial_closed_from_evidence (M : MetamaterialStructure)
    (E : MetamaterialEvidence M) : MetamaterialClosed M := by
  exact And.intro E.effectivePermittivityClosed (And.intro E.effectivePermeabilityClosed
    (And.intro E.negativeRefractionClosed (And.intro E.subwavelengthResolutionClosed E.homogenizationLimitClosed)))

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse