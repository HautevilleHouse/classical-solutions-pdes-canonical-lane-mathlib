import ClassicalSolutionsPdesCanonicalLaneLean.RiemannianCurvature

/-!
# Sobolev Spaces Package
-/

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure SobolevSpacePackage where
  domain : Type u
  dimension : Nat
  integrabilityExponent : ℝ
  differentiabilityOrder : Nat
  embeddingTheorem : Prop
  compactEmbedding : Prop
  normInequality : Prop

structure SobolevSpaceEvidence (S : SobolevSpacePackage) where
  embeddingTheoremClosed : S.embeddingTheorem
  compactEmbeddingClosed : S.compactEmbedding
  normInequalityClosed : S.normInequality

def SobolevSpaceClosed (S : SobolevSpacePackage) : Prop :=
  S.embeddingTheorem ∧ S.compactEmbedding ∧ S.normInequality

theorem sobolev_space_closed_from_evidence (S : SobolevSpacePackage) (E : SobolevSpaceEvidence S) :
    SobolevSpaceClosed S := by
  exact And.intro E.embeddingTheoremClosed (And.intro E.compactEmbeddingClosed E.normInequalityClosed)

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse