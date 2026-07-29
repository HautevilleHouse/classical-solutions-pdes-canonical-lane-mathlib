import canonicalLaneMathlib.AdmissibleClass
import ClassicalSolutionsPdesCanonicalLaneLean.ClassicalSolutionDefinition

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure NavierStokesRegularityPackage (Ω : ClassicalSolutionDomain) where
  weakSolution : Prop
  strongSolution : Prop
  regularityCriteria : Prop
  uniqueness : Prop
  globalWellPosedness : Prop

structure NavierStokesRegularityEvidence (Ω : ClassicalSolutionDomain) (N : NavierStokesRegularityPackage Ω) where
  weakSolutionClosed : N.weakSolution
  strongSolutionClosed : N.strongSolution
  regularityCriteriaClosed : N.regularityCriteria
  uniquenessClosed : N.uniqueness
  globalWellPosednessClosed : N.globalWellPosedness

def NavierStokesRegularityClosed (Ω : ClassicalSolutionDomain) (N : NavierStokesRegularityPackage Ω) : Prop :=
  N.weakSolution ∧ N.strongSolution ∧ N.regularityCriteria ∧ N.uniqueness ∧ N.globalWellPosedness

theorem navier_stokes_regularity_closed_from_evidence (Ω : ClassicalSolutionDomain) (N : NavierStokesRegularityPackage Ω) (Ev : NavierStokesRegularityEvidence Ω N) :
    NavierStokesRegularityClosed Ω N := by
  exact And.intro Ev.weakSolutionClosed (And.intro Ev.strongSolutionClosed (And.intro Ev.regularityCriteriaClosed (And.intro Ev.uniquenessClosed Ev.globalWellPosednessClosed)))

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse