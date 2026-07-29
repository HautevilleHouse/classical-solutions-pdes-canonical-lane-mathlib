import canonicalLaneMathlib.AdmissibleClass
import ClassicalSolutionsPdesCanonicalLaneLean.ClassicalSolutionDefinition

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure SobolevEmbeddingPackage (Ω : ClassicalSolutionDomain) where
  sobolevInequality : Prop
  morreyEmbedding : Prop
  compactEmbedding : Prop
  traceEmbedding : Prop
  applicationToPDE : Prop

structure SobolevEmbeddingEvidence (Ω : ClassicalSolutionDomain) (S : SobolevEmbeddingPackage Ω) where
  sobolevInequalityClosed : S.sobolevInequality
  morreyEmbeddingClosed : S.morreyEmbedding
  compactEmbeddingClosed : S.compactEmbedding
  traceEmbeddingClosed : S.traceEmbedding
  applicationToPDEClosed : S.applicationToPDE

def SobolevEmbeddingClosed (Ω : ClassicalSolutionDomain) (S : SobolevEmbeddingPackage Ω) : Prop :=
  S.sobolevInequality ∧ S.morreyEmbedding ∧ S.compactEmbedding ∧ S.traceEmbedding ∧ S.applicationToPDE

theorem sobolev_embedding_closed_from_evidence (Ω : ClassicalSolutionDomain) (S : SobolevEmbeddingPackage Ω) (Ev : SobolevEmbeddingEvidence Ω S) :
    SobolevEmbeddingClosed Ω S := by
  exact And.intro Ev.sobolevInequalityClosed (And.intro Ev.morreyEmbeddingClosed (And.intro Ev.compactEmbeddingClosed (And.intro Ev.traceEmbeddingClosed Ev.applicationToPDEClosed)))

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse