import ClassicalSolutionsPdesCanonicalLaneLean.ParabolicExistence

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure HyperbolicWellposednessPackage {S : SobolevSpacePackage}
    {E : EllipticRegularityPackage S} {P : ParabolicExistencePackage E} where
  waveOperator : Prop
  finiteSpeedPropagation : Prop
  energyEstimates : Prop
  wellposedness : Prop

structure HyperbolicWellposednessEvidence {S : SobolevSpacePackage}
    {E : EllipticRegularityPackage S} {P : ParabolicExistencePackage E}
    (H : HyperbolicWellposednessPackage P) where
  waveOperatorClosed : H.waveOperator
  finiteSpeedPropagationClosed : H.finiteSpeedPropagation
  energyEstimatesClosed : H.energyEstimates
  wellposednessClosed : H.wellposedness

def HyperbolicWellposednessClosed {S : SobolevSpacePackage}
    {E : EllipticRegularityPackage S} {P : ParabolicExistencePackage E}
    (H : HyperbolicWellposednessPackage P) : Prop :=
  H.waveOperator ∧ H.finiteSpeedPropagation ∧ H.energyEstimates ∧ H.wellposedness

theorem hyperbolic_wellposedness_closed_from_evidence
    {S : SobolevSpacePackage} {E : EllipticRegularityPackage S} {P : ParabolicExistencePackage E}
    (H : HyperbolicWellposednessPackage P) (Ev : HyperbolicWellposednessEvidence H) :
    HyperbolicWellposednessClosed H := by
  exact And.intro Ev.waveOperatorClosed
    (And.intro Ev.finiteSpeedPropagationClosed
      (And.intro Ev.energyEstimatesClosed Ev.wellposednessClosed))

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse
