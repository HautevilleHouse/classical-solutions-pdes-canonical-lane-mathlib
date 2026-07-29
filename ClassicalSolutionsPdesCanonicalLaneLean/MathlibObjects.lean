import canonicalLaneMathlib.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ClassicalSolutionsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ClassicalSolutionsAdmittedObject where
  space : ClassicalSolutionsSpace
  pdeWellPosed : Prop
  solutionRegular : Prop
  functionSpaceModel : Type
  functionTopology : TopologicalSpace functionSpaceModel
  solutionExists : Prop
  conclusion : solutionExists

structure ClassicalSolutionsEndgameState where
  object : ClassicalSolutionsAdmittedObject

def ClassicalSolutionsWitnessClosed (O : ClassicalSolutionsAdmittedObject) : Prop :=
  O.solutionExists

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse
