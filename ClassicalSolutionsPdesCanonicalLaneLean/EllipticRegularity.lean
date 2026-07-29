import canonicalLaneMathlib.AdmissibleClass
import ClassicalSolutionsPdesCanonicalLaneLean.ClassicalSolutionDefinition

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure EllipticRegularityPackage (Ω : ClassicalSolutionDomain) where
  holderContinuity : Prop
  schauderEstimates : Prop
  sobolevEmbedding : Prop
  interiorRegularity : Prop
  boundaryRegularity : Prop

structure EllipticRegularityEvidence (Ω : ClassicalSolutionDomain) (E : EllipticRegularityPackage Ω) where
  holderContinuityClosed : E.holderContinuity
  schauderEstimatesClosed : E.schauderEstimates
  sobolevEmbeddingClosed : E.sobolevEmbedding
  interiorRegularityClosed : E.interiorRegularity
  boundaryRegularityClosed : E.boundaryRegularity

def EllipticRegularityClosed (Ω : ClassicalSolutionDomain) (E : EllipticRegularityPackage Ω) : Prop :=
  E.holderContinuity ∧ E.schauderEstimates ∧ E.sobolevEmbedding ∧ E.interiorRegularity ∧ E.boundaryRegularity

theorem elliptic_regularity_closed_from_evidence (Ω : ClassicalSolutionDomain) (E : EllipticRegularityPackage Ω) (Ev : EllipticRegularityEvidence Ω E) :
    EllipticRegularityClosed Ω E := by
  exact And.intro Ev.holderContinuityClosed (And.intro Ev.schauderEstimatesClosed (And.intro Ev.sobolevEmbeddingClosed (And.intro Ev.interiorRegularityClosed Ev.boundaryRegularityClosed)))

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse