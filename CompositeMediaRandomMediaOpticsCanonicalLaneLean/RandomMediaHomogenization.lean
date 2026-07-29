import CompositeMediaRandomMediaOpticsCanonicalLaneLean.MaxwellEquations

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure RandomMediaHomogenizationPackage {M : MaxwellEquationPackage} where
  correlationLength : Type u
  volumeFraction : Type v
  effectivePermittivity : Type w
  effectivePermeability : Type x
  homogenizationConvergence : Prop
  mixingRule : Prop
  ergodicity : Prop

structure RandomMediaHomogenizationEvidence {M : MaxwellEquationPackage}
    (H : RandomMediaHomogenizationPackage M) where
  homogenizationConvergenceClosed : H.homogenizationConvergence
  mixingRuleClosed : H.mixingRule
  ergodicityClosed : H.ergodicity

def RandomMediaHomogenizationClosed {M : MaxwellEquationPackage}
    (H : RandomMediaHomogenizationPackage M) : Prop :=
  H.homogenizationConvergence ∧ H.mixingRule ∧ H.ergodicity

theorem random_media_homogenization_closed_from_evidence
    {M : MaxwellEquationPackage} (H : RandomMediaHomogenizationPackage M)
    (E : RandomMediaHomogenizationEvidence H) : RandomMediaHomogenizationClosed H := by
  exact And.intro E.homogenizationConvergenceClosed
    (And.intro E.mixingRuleClosed E.ergodicityClosed)

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse