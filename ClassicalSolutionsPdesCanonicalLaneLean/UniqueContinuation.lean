import ClassicalSolutionsPdesCanonicalLaneLean.ParabolicSchauder

/-!
# Unique Continuation Package
-/

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure UniqueContinuationPackage where
  pdeOperator : Prop
  carlemanEstimate : Prop
  uniquenessHolds : Prop
  propagationOfZeros : Prop

structure UniqueContinuationEvidence (U : UniqueContinuationPackage) where
  carlemanEstimateClosed : U.carlemanEstimate
  uniquenessHoldsClosed : U.uniquenessHolds
  propagationOfZerosClosed : U.propagationOfZeros

def UniqueContinuationClosed (U : UniqueContinuationPackage) : Prop :=
  U.carlemanEstimate ∧ U.uniquenessHolds ∧ U.propagationOfZeros

theorem unique_continuation_closed_from_evidence (U : UniqueContinuationPackage) (E : UniqueContinuationEvidence U) :
    UniqueContinuationClosed U := by
  exact And.intro E.carlemanEstimateClosed (And.intro E.uniquenessHoldsClosed E.propagationOfZerosClosed)

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse