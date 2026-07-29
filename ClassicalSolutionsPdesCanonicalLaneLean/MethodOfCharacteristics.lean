import canonicalLaneMathlib.ParabolicPDE

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure MethodOfCharacteristicsPackage {E : LinearEllipticPDEPackage}
    (P : ParabolicPDEPackage E) where
  characteristicCurves : Type u
  characteristicEquation : Prop
  compatibilityCondition : Prop
  classicalSolutionConstructed : Prop

structure MethodOfCharacteristicsEvidence {E : LinearEllipticPDEPackage}
    {P : ParabolicPDEPackage E} (M : MethodOfCharacteristicsPackage P) where
  characteristicEquationClosed : M.characteristicEquation
  compatibilityConditionClosed : M.compatibilityCondition
  classicalSolutionConstructedClosed : M.classicalSolutionConstructed

def MethodOfCharacteristicsClosed {E : LinearEllipticPDEPackage}
    {P : ParabolicPDEPackage E} (M : MethodOfCharacteristicsPackage P) : Prop :=
  M.characteristicEquation ∧ M.compatibilityCondition ∧ M.classicalSolutionConstructed

theorem method_of_characteristics_closed_from_evidence
    {E : LinearEllipticPDEPackage} {P : ParabolicPDEPackage E}
    (M : MethodOfCharacteristicsPackage P)
    (Ev : MethodOfCharacteristicsEvidence M) : MethodOfCharacteristicsClosed M := by
  exact And.intro Ev.characteristicEquationClosed
    (And.intro Ev.compatibilityConditionClosed Ev.classicalSolutionConstructedClosed)

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse
