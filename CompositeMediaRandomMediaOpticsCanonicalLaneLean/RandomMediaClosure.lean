import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

structure RandomMediaPackage where
  mediumType : Type u
  dielectricConstant : Type v
  magneticPermeability : Type w
  correlationFunction : Prop
  ergodicityAssumed : Prop
  statisticalHomogeneity : Prop
  effectiveMediumApproximation : Prop

structure RandomMediaEvidence (R : RandomMediaPackage) where
  correlationFunctionClosed : R.correlationFunction
  ergodicityAssumedClosed : R.ergodicityAssumed
  statisticalHomogeneityClosed : R.statisticalHomogeneity
  effectiveMediumApproximationClosed : R.effectiveMediumApproximation

def RandomMediaClosed (R : RandomMediaPackage) : Prop :=
  R.correlationFunction ∧ R.ergodicityAssumed ∧ R.statisticalHomogeneity ∧ R.effectiveMediumApproximation

theorem random_media_closed_from_evidence (R : RandomMediaPackage)
    (E : RandomMediaEvidence R) : RandomMediaClosed R := by
  exact And.intro E.correlationFunctionClosed (And.intro E.ergodicityAssumedClosed
    (And.intro E.statisticalHomogeneityClosed E.effectiveMediumApproximationClosed))

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse