import canonicalLaneMathlib.RiemannianCurvature

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure LinearEllipticPDEPackage where
  domain : Type u
  operator : Type v
  coefficientRegularity : Prop
  ellipticityCondition : Prop
  boundaryCondition : Prop
  sourceTerm : Type w
  solutionClass : Type x
  weakSolutionInSpace : Type y

structure LinearEllipticPDEEvidence (E : LinearEllipticPDEPackage) where
  coefficientRegularityClosed : E.coefficientRegularity
  ellipticityConditionClosed : E.ellipticityCondition
  boundaryConditionClosed : E.boundaryCondition

def LinearEllipticPDEClosed (E : LinearEllipticPDEPackage) : Prop :=
  E.coefficientRegularity ∧ E.ellipticityCondition ∧ E.boundaryCondition

theorem linear_elliptic_pde_closed_from_evidence (E : LinearEllipticPDEPackage)
    (Ev : LinearEllipticPDEEvidence E) : LinearEllipticPDEClosed E := by
  exact And.intro Ev.coefficientRegularityClosed
    (And.intro Ev.ellipticityConditionClosed Ev.boundaryConditionClosed)

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse
