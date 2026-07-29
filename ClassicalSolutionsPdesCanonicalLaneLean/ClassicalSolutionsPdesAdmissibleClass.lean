import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure ClassicalSolutionSpace where
  domain : Type u
  topology : TopologicalSpace domain
  smoothStructure : Prop

structure PdeAdmittedObject where
  solutionSpace : ClassicalSolutionSpace
  equationSatisfied : Prop
  initialBoundaryConditions : Prop
  regularity : Prop
  conclusion : equationSatisfied ∧ initialBoundaryConditions ∧ regularity

structure PdeAdmissibleClass where
  object : PdeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : PdeAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse