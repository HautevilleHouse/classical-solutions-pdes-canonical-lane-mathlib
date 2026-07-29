import ClassicalSolutionsPdesCanonicalLaneLean.ClassicalPdePackage

/-!
# Elliptic PDE Package
-/

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure EllipticPdePackage (P : ClassicalPdePackage) where
  ellipticityCondition : Prop
  maximumPrinciple : Prop
  schauderEstimates : Prop
  sobolevEmbedding : Prop

structure EllipticPdeEvidence {P : ClassicalPdePackage}
    (E : EllipticPdePackage P) where
  ellipticityConditionClosed : E.ellipticityCondition
  maximumPrincipleClosed : E.maximumPrinciple
  schauderEstimatesClosed : E.schauderEstimates
  sobolevEmbeddingClosed : E.sobolevEmbedding

def EllipticPdeClosed {P : ClassicalPdePackage}
    (E : EllipticPdePackage P) : Prop :=
  E.ellipticityCondition ∧ E.maximumPrinciple ∧
  E.schauderEstimates ∧ E.sobolevEmbedding

theorem elliptic_pde_closed_from_evidence {P : ClassicalPdePackage}
    (Epkg : EllipticPdePackage P) (Epkg2 : EllipticPdeEvidence Epkg) :
    EllipticPdeClosed Epkg := by
  exact And.intro Epkg2.ellipticityConditionClosed
    (And.intro Epkg2.maximumPrincipleClosed
      (And.intro Epkg2.schauderEstimatesClosed Epkg2.sobolevEmbeddingClosed))

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse