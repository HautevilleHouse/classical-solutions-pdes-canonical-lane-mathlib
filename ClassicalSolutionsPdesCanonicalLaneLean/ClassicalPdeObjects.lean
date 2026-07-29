import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure ClassicalPdeSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ClassicalPdeAdmittedObject where
  space : ClassicalPdeSpace
  smoothSolution : Prop
  boundaryRegularity : Prop
  initialDataCompatible : Prop
  solutionModel : Type
  solutionTopology : TopologicalSpace solutionModel
  solutionExists : Prop
  conclusion : solutionExists

def ClassicalPdeWitnessClosed (O : ClassicalPdeAdmittedObject) : Prop :=
  O.solutionExists

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse