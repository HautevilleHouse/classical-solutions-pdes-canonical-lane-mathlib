import canonicalLaneMathlib.AdmissibleClass
import ClassicalSolutionsPdesCanonicalLaneLean.ClassicalSolutionDefinition

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure ParabolicMaximumPrinciplePackage (Ω : ClassicalSolutionDomain) where
  weakMaximum : Prop
  strongMaximum : Prop
  hopfLemma : Prop
  comparisonPrinciple : Prop
  applicationToUniqueness : Prop

structure ParabolicMaximumPrincipleEvidence (Ω : ClassicalSolutionDomain) (P : ParabolicMaximumPrinciplePackage Ω) where
  weakMaximumClosed : P.weakMaximum
  strongMaximumClosed : P.strongMaximum
  hopfLemmaClosed : P.hopfLemma
  comparisonPrincipleClosed : P.comparisonPrinciple
  applicationToUniquenessClosed : P.applicationToUniqueness

def ParabolicMaximumPrincipleClosed (Ω : ClassicalSolutionDomain) (P : ParabolicMaximumPrinciplePackage Ω) : Prop :=
  P.weakMaximum ∧ P.strongMaximum ∧ P.hopfLemma ∧ P.comparisonPrinciple ∧ P.applicationToUniqueness

theorem parabolic_maximum_principle_closed_from_evidence (Ω : ClassicalSolutionDomain) (P : ParabolicMaximumPrinciplePackage Ω) (Ev : ParabolicMaximumPrincipleEvidence Ω P) :
    ParabolicMaximumPrincipleClosed Ω P := by
  exact And.intro Ev.weakMaximumClosed (And.intro Ev.strongMaximumClosed (And.intro Ev.hopfLemmaClosed (And.intro Ev.comparisonPrincipleClosed Ev.applicationToUniquenessClosed)))

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse