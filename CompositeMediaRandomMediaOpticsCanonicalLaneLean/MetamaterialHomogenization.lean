import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure MetamaterialHomogenizationPackage where
  unitCellGeometry : Type u
  constituentMaterials : Type v
  effectivePermittivity : Type w
  effectivePermeability : Type x
  homogenizationLimit : Prop
  localFieldApproximation : Prop
  effectiveMediumTheory : Prop
  dispersionRelation : Prop
  negativeRefractionCondition : Prop
  bianisotropyModel : Prop
  lossMechanism : Prop

structure MetamaterialHomogenizationEvidence
    (M : MetamaterialHomogenizationPackage) where
  homogenizationLimitClosed : M.homogenizationLimit
  localFieldApproximationClosed : M.localFieldApproximation
  effectiveMediumTheoryClosed : M.effectiveMediumTheory
  dispersionRelationClosed : M.dispersionRelation
  negativeRefractionConditionClosed : M.negativeRefractionCondition
  bianisotropyModelClosed : M.bianisotropyModel
  lossMechanismClosed : M.lossMechanism

def MetamaterialHomogenizationClosed
    (M : MetamaterialHomogenizationPackage) : Prop :=
  M.homogenizationLimit ∧ M.localFieldApproximation ∧
  M.effectiveMediumTheory ∧ M.dispersionRelation ∧
  M.negativeRefractionCondition ∧ M.bianisotropyModel ∧ M.lossMechanism

theorem metamaterial_homogenization_closed_from_evidence
    (M : MetamaterialHomogenizationPackage)
    (E : MetamaterialHomogenizationEvidence M) :
    MetamaterialHomogenizationClosed M := by
  exact And.intro E.homogenizationLimitClosed
    (And.intro E.localFieldApproximationClosed
      (And.intro E.effectiveMediumTheoryClosed
        (And.intro E.dispersionRelationClosed
          (And.intro E.negativeRefractionConditionClosed
            (And.intro E.bianisotropyModelClosed E.lossMechanismClosed)))))

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse