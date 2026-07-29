import canonicalLaneMathlib.AdmissibleClass
import ClassicalSolutionsPdesCanonicalLaneLean.ClassicalSolutionDefinition

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure SemilinearWaveEquationPackage (Ω : ClassicalSolutionDomain) where
  localExistence : Prop
  globalExistence : Prop
  energyEstimates : Prop
  finiteSpeedPropagation : Prop
  blowupCondition : Prop

structure SemilinearWaveEquationEvidence (Ω : ClassicalSolutionDomain) (W : SemilinearWaveEquationPackage Ω) where
  localExistenceClosed : W.localExistence
  globalExistenceClosed : W.globalExistence
  energyEstimatesClosed : W.energyEstimates
  finiteSpeedPropagationClosed : W.finiteSpeedPropagation
  blowupConditionClosed : W.blowupCondition

def SemilinearWaveEquationClosed (Ω : ClassicalSolutionDomain) (W : SemilinearWaveEquationPackage Ω) : Prop :=
  W.localExistence ∧ W.globalExistence ∧ W.energyEstimates ∧ W.finiteSpeedPropagation ∧ W.blowupCondition

theorem semilinear_wave_equation_closed_from_evidence (Ω : ClassicalSolutionDomain) (W : SemilinearWaveEquationPackage Ω) (Ev : SemilinearWaveEquationEvidence Ω W) :
    SemilinearWaveEquationClosed Ω W := by
  exact And.intro Ev.localExistenceClosed (And.intro Ev.globalExistenceClosed (And.intro Ev.energyEstimatesClosed (And.intro Ev.finiteSpeedPropagationClosed Ev.blowupConditionClosed)))

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse