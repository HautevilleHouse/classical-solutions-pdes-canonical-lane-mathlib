import ClassicalSolutionsPdesCanonicalLaneLean.ClassicalPdePackage

/-!
# Hyperbolic PDE Package
-/

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure HyperbolicPdePackage (P : ClassicalPdePackage) where
  hyperbolicityCondition : Prop
  energyEstimates : Prop
  finiteSpeedOfPropagation : Prop
  wellposedness : Prop

structure HyperbolicPdeEvidence {P : ClassicalPdePackage}
    (Epkg : HyperbolicPdePackage P) where
  hyperbolicityConditionClosed : Epkg.hyperbolicityCondition
  energyEstimatesClosed : Epkg.energyEstimates
  finiteSpeedOfPropagationClosed : Epkg.finiteSpeedOfPropagation
  wellposednessClosed : Epkg.wellposedness

def HyperbolicPdeClosed {P : ClassicalPdePackage}
    (Epkg : HyperbolicPdePackage P) : Prop :=
  Epkg.hyperbolicityCondition ∧ Epkg.energyEstimates ∧
  Epkg.finiteSpeedOfPropagation ∧ Epkg.wellposedness

theorem hyperbolic_pde_closed_from_evidence {P : ClassicalPdePackage}
    (Epkg : HyperbolicPdePackage P) (Epkg2 : HyperbolicPdeEvidence Epkg) :
    HyperbolicPdeClosed Epkg := by
  exact And.intro Epkg2.hyperbolicityConditionClosed
    (And.intro Epkg2.energyEstimatesClosed
      (And.intro Epkg2.finiteSpeedOfPropagationClosed Epkg2.wellposednessClosed))

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse