import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure MaxwellEquationsPackage where
  electricField : Type u
  magneticField : Type v
  displacementField : Type w
  magneticInduction : Type x
  freeChargeDensity : Prop
  currentDensity : Prop
  gaussLaw : Prop
  gaussMagnetism : Prop
  faradayLaw : Prop
  ampereMaxwellLaw : Prop
  constitutiveRelations : Prop

structure MaxwellEquationsEvidence (M : MaxwellEquationsPackage) where
  gaussLawClosed : M.gaussLaw
  gaussMagnetismClosed : M.gaussMagnetism
  faradayLawClosed : M.faradayLaw
  ampereMaxwellLawClosed : M.ampereMaxwellLaw
  constitutiveRelationsClosed : M.constitutiveRelations

def MaxwellEquationsClosed (M : MaxwellEquationsPackage) : Prop :=
  M.gaussLaw ∧ M.gaussMagnetism ∧ M.faradayLaw ∧ M.ampereMaxwellLaw ∧ M.constitutiveRelations

theorem maxwell_equations_closed_from_evidence (M : MaxwellEquationsPackage)
    (E : MaxwellEquationsEvidence M) : MaxwellEquationsClosed M := by
  exact And.intro E.gaussLawClosed (And.intro E.gaussMagnetismClosed
    (And.intro E.faradayLawClosed (And.intro E.ampereMaxwellLawClosed E.constitutiveRelationsClosed)))

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse