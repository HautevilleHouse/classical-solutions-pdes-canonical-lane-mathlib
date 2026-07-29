import canonicalLaneMathlib.RegularityTheory

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure EndpointClassificationPackage {E : LinearEllipticPDEPackage}
    {P : ParabolicPDEPackage E} {M : MethodOfCharacteristicsPackage P}
    (R : RegularityTheoryPackage M) where
  targetFunctionSpace : Type u
  targetTopology : TopologicalSpace targetFunctionSpace
  classicalSolutionAttained : Prop
  endpointMatchesPdeStatement : Prop

structure EndpointClassificationEvidence {E : LinearEllipticPDEPackage}
    {P : ParabolicPDEPackage E} {M : MethodOfCharacteristicsPackage P}
    {R : RegularityTheoryPackage M} (Epkg : EndpointClassificationPackage R) where
  classicalSolutionAttainedClosed : Epkg.classicalSolutionAttained
  endpointMatchesPdeStatementClosed : Epkg.endpointMatchesPdeStatement

def EndpointClassificationClosed {E : LinearEllipticPDEPackage}
    {P : ParabolicPDEPackage E} {M : MethodOfCharacteristicsPackage P}
    {R : RegularityTheoryPackage M} (Epkg : EndpointClassificationPackage R) : Prop :=
  Epkg.classicalSolutionAttained ∧ Epkg.endpointMatchesPdeStatement

theorem endpoint_classification_closed_from_evidence
    {E : LinearEllipticPDEPackage} {P : ParabolicPDEPackage E}
    {M : MethodOfCharacteristicsPackage P} {R : RegularityTheoryPackage M}
    (Epkg : EndpointClassificationPackage R)
    (Ev : EndpointClassificationEvidence Epkg) : EndpointClassificationClosed Epkg := by
  exact And.intro Ev.classicalSolutionAttainedClosed
    Ev.endpointMatchesPdeStatementClosed

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse
