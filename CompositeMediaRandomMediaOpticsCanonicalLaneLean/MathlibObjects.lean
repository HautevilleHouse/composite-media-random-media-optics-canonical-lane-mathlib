import CompositeMediaRandomMediaOpticsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CompositeMediaRandomMediaOpticsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CompositeMediaSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CompositeMediaAdmittedObject where
  space : CompositeMediaSpace
  inhomogeneousMedia : Prop
  randomCoefficients : Prop
  wavePropagationModel : Type
  modelTopology : TopologicalSpace wavePropagationModel
  effectiveMediumDescription : Prop
  conclusion : effectiveMediumDescription

structure CompositeMediaEndgameState where
  object : CompositeMediaAdmittedObject

def CompositeMediaWitnessClosed (O : CompositeMediaAdmittedObject) : Prop :=
  O.effectiveMediumDescription

end CompositeMediaRandomMediaOpticsCanonicalLaneLean
end HautevilleHouse