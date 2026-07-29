import CompositeMediaRandomMediaOpticsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def compositeMediaProjection : Projection CompositeMediaEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem composite_media_projection_idempotent (x : CompositeMediaEndgameState) :
    compositeMediaProjection.toFun (compositeMediaProjection.toFun x) = compositeMediaProjection.toFun x := by
  exact compositeMediaProjection.idempotent x

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse