import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure DiffractionPackage where
  apertureFunction : Type u
  incidentField : Type v
  farFieldPattern : Type w
  fresnelApproximation : Prop
  fraunhoferApproximation : Prop
  scalarDiffractionTheory : Prop

structure DiffractionEvidence (D : DiffractionPackage) where
  fresnelApproximationClosed : D.fresnelApproximation
  fraunhoferApproximationClosed : D.fraunhoferApproximation
  scalarDiffractionTheoryClosed : D.scalarDiffractionTheory

def DiffractionClosed (D : DiffractionPackage) : Prop :=
  D.fresnelApproximation ∧ D.fraunhoferApproximation ∧ D.scalarDiffractionTheory

theorem diffraction_closed_from_evidence (D : DiffractionPackage) (E : DiffractionEvidence D) :
    DiffractionClosed D := by
  exact And.intro E.fresnelApproximationClosed (And.intro E.fraunhoferApproximationClosed E.scalarDiffractionTheoryClosed)

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse