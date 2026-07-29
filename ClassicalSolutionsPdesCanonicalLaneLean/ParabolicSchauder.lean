import ClassicalSolutionsPdesCanonicalLaneLean.EllipticRegularity

/-!
# Parabolic Schauder Estimates Package
-/

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure ParabolicSchauderPackage where
  parabolicOperator : Prop
  holderEstimates : Prop
  interiorHölder : Prop
  boundaryHölder : Prop

structure ParabolicSchauderEvidence (P : ParabolicSchauderPackage) where
  holderEstimatesClosed : P.holderEstimates
  interiorHölderClosed : P.interiorHölder
  boundaryHölderClosed : P.boundaryHölder

def ParabolicSchauderClosed (P : ParabolicSchauderPackage) : Prop :=
  P.holderEstimates ∧ P.interiorHölder ∧ P.boundaryHölder

theorem parabolic_schauder_closed_from_evidence (P : ParabolicSchauderPackage) (E : ParabolicSchauderEvidence P) :
    ParabolicSchauderClosed P := by
  exact And.intro E.holderEstimatesClosed (And.intro E.interiorHölderClosed E.boundaryHölderClosed)

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse