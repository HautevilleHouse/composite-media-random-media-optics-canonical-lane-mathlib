import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure MaxwellWaveEquationPackage where
  electricField : Type u
  magneticField : Type v
  refractiveIndexDistribution : Type w
  curlEquation : Prop
  divergenceEquation : Prop
  frequencyDomainForm : Prop
  scatteringProblem : Prop

structure MaxwellWaveEquationEvidence (M : MaxwellWaveEquationPackage) where
  curlEquationClosed : M.curlEquation
  divergenceEquationClosed : M.divergenceEquation
  frequencyDomainFormClosed : M.frequencyDomainForm
  scatteringProblemClosed : M.scatteringProblem

def MaxwellWaveEquationClosed (M : MaxwellWaveEquationPackage) : Prop :=
  M.curlEquation ∧ M.divergenceEquation ∧ M.frequencyDomainForm ∧ M.scatteringProblem

theorem maxwell_wave_equation_closed_from_evidence (M : MaxwellWaveEquationPackage)
    (E : MaxwellWaveEquationEvidence M) : MaxwellWaveEquationClosed M := by
  exact And.intro E.curlEquationClosed (And.intro E.divergenceEquationClosed
    (And.intro E.frequencyDomainFormClosed E.scatteringProblemClosed))

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse