import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure DiffractionTheoryPackage where
  waveEquation : Prop
  helmholtzEquation : Prop
  boundaryConditions : Prop
  huygensFresnelPrinciple : Prop
  kirchhoffIntegral : Prop
  fresnelApproximation : Prop
  fraunhoferApproximation : Prop

structure DiffractionTheoryEvidence (D : DiffractionTheoryPackage) where
  waveEquationClosed : D.waveEquation
  helmholtzEquationClosed : D.helmholtzEquation
  boundaryConditionsClosed : D.boundaryConditions
  huygensFresnelPrincipleClosed : D.huygensFresnelPrinciple
  kirchhoffIntegralClosed : D.kirchhoffIntegral
  fresnelApproximationClosed : D.fresnelApproximation
  fraunhoferApproximationClosed : D.fraunhoferApproximation

def DiffractionTheoryClosed (D : DiffractionTheoryPackage) : Prop :=
  D.waveEquation ∧ D.helmholtzEquation ∧ D.boundaryConditions ∧ D.huygensFresnelPrinciple ∧ D.kirchhoffIntegral ∧ D.fresnelApproximation ∧ D.fraunhoferApproximation

theorem diffraction_theory_closed_from_evidence (D : DiffractionTheoryPackage) (E : DiffractionTheoryEvidence D) :
    DiffractionTheoryClosed D := by
  exact And.intro E.waveEquationClosed
    (And.intro E.helmholtzEquationClosed
      (And.intro E.boundaryConditionsClosed
        (And.intro E.huygensFresnelPrincipleClosed
          (And.intro E.kirchhoffIntegralClosed
            (And.intro E.fresnelApproximationClosed E.fraunhoferApproximationClosed)))))

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse