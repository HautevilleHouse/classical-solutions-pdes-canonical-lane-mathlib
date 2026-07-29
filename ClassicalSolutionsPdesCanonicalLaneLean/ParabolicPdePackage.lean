import ClassicalSolutionsPdesCanonicalLaneLean.ClassicalPdePackage

/-!
# Parabolic PDE Package
-/

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure ParabolicPdePackage (P : ClassicalPdePackage) where
  parabolicityCondition : Prop
  maximumPrinciple : Prop
  schauderEstimates : Prop
  semigroupTheory : Prop

structure ParabolicPdeEvidence {P : ClassicalPdePackage}
    (Epkg : ParabolicPdePackage P) where
  parabolicityConditionClosed : Epkg.parabolicityCondition
  maximumPrincipleClosed : Epkg.maximumPrinciple
  schauderEstimatesClosed : Epkg.schauderEstimates
  semigroupTheoryClosed : Epkg.semigroupTheory

def ParabolicPdeClosed {P : ClassicalPdePackage}
    (Epkg : ParabolicPdePackage P) : Prop :=
  Epkg.parabolicityCondition ∧ Epkg.maximumPrinciple ∧
  Epkg.schauderEstimates ∧ Epkg.semigroupTheory

theorem parabolic_pde_closed_from_evidence {P : ClassicalPdePackage}
    (Epkg : ParabolicPdePackage P) (Epkg2 : ParabolicPdeEvidence Epkg) :
    ParabolicPdeClosed Epkg := by
  exact And.intro Epkg2.parabolicityConditionClosed
    (And.intro Epkg2.maximumPrincipleClosed
      (And.intro Epkg2.schauderEstimatesClosed Epkg2.semigroupTheoryClosed))

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse