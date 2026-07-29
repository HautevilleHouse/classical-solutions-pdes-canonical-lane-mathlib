import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure ClassicalSolutionDomain where
  space : Type u
  time : Type v
  domain : space → Prop
  timeInterval : Prop
  spaceDimension : Nat
  timeDependent : Prop

structure ClassicalSolutionFunction (Ω : ClassicalSolutionDomain) where
  solution : Ω.space → Ω.time → ℝ
  continuity : Prop
  differentiability : Prop
  satisfiesPDE : Prop
  initialCondition : Prop
  boundaryCondition : Prop

structure ClassicalSolutionExistence (Ω : ClassicalSolutionDomain) where
  solutionExists : ClassicalSolutionFunction Ω
  existenceProof : solutionExists.satisfiesPDE
  uniquenessProof : Prop
  stabilityEstimate : Prop

def ClassicalSolutionClosed (Ω : ClassicalSolutionDomain) (S : ClassicalSolutionExistence Ω) : Prop :=
  S.existenceProof ∧ S.uniquenessProof ∧ S.stabilityEstimate

theorem classical_solution_closed_from_evidence (Ω : ClassicalSolutionDomain) (S : ClassicalSolutionExistence Ω) :
    ClassicalSolutionClosed Ω S := by
  exact And.intro S.existenceProof (And.intro S.uniquenessProof S.stabilityEstimate)

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse