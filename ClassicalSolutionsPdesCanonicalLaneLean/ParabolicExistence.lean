import ClassicalSolutionsPdesCanonicalLaneLean.EllipticRegularity

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure ParabolicExistencePackage {S : SobolevSpacePackage}
    {E : EllipticRegularityPackage S} where
  parabolicOperator : Prop
  shortTimeExistence : Prop
  maximalExistence : Prop
  continuousDependence : Prop

structure ParabolicExistenceEvidence {S : SobolevSpacePackage}
    {E : EllipticRegularityPackage S}
    (P : ParabolicExistencePackage E) where
  parabolicOperatorClosed : P.parabolicOperator
  shortTimeExistenceClosed : P.shortTimeExistence
  maximalExistenceClosed : P.maximalExistence
  continuousDependenceClosed : P.continuousDependence

def ParabolicExistenceClosed {S : SobolevSpacePackage}
    {E : EllipticRegularityPackage S}
    (P : ParabolicExistencePackage E) : Prop :=
  P.parabolicOperator ∧ P.shortTimeExistence ∧ P.maximalExistence ∧ P.continuousDependence

theorem parabolic_existence_closed_from_evidence
    {S : SobolevSpacePackage} {E : EllipticRegularityPackage S}
    (P : ParabolicExistencePackage E) (Ev : ParabolicExistenceEvidence P) :
    ParabolicExistenceClosed P := by
  exact And.intro Ev.parabolicOperatorClosed
    (And.intro Ev.shortTimeExistenceClosed
      (And.intro Ev.maximalExistenceClosed Ev.continuousDependenceClosed))

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse
