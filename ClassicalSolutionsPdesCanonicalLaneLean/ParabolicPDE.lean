import canonicalLaneMathlib.LinearEllipticPDE

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure ParabolicPDEPackage {E : LinearEllipticPDEPackage} where
  timeDomain : Type u
  initialCondition : Prop
  parabolicityCondition : Prop
  evolutionOperator : Type v
  solutionFamily : Type w
  maximumPrinciple : Prop

structure ParabolicPDEEvidence {E : LinearEllipticPDEPackage}
    (P : ParabolicPDEPackage E) where
  initialConditionClosed : P.initialCondition
  parabolicityConditionClosed : P.parabolicityCondition
  maximumPrincipleClosed : P.maximumPrinciple

def ParabolicPDEClosed {E : LinearEllipticPDEPackage} (P : ParabolicPDEPackage E) : Prop :=
  P.initialCondition ∧ P.parabolicityCondition ∧ P.maximumPrinciple

theorem parabolic_pde_closed_from_evidence {E : LinearEllipticPDEPackage}
    (P : ParabolicPDEPackage E) (Ev : ParabolicPDEEvidence P) : ParabolicPDEClosed P := by
  exact And.intro Ev.initialConditionClosed
    (And.intro Ev.parabolicityConditionClosed Ev.maximumPrincipleClosed)

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse
