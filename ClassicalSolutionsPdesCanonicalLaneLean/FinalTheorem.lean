import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

def ConstrainedClassicalPdeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_classical_pde_endgame (A : AdmissibleClass) :
    ConstrainedClassicalPdeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse