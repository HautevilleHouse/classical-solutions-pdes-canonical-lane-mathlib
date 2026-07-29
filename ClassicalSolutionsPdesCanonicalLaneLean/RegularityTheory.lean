import canonicalLaneMathlib.MethodOfCharacteristics

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure RegularityTheoryPackage {E : LinearEllipticPDEPackage}
    {P : ParabolicPDEPackage E} {M : MethodOfCharacteristicsPackage P} where
  schauderEstimates : Prop
  sobolevEmbeddings : Prop
  bootstrapRegularity : Prop
  classicalSolutionHigherRegular : Prop

structure RegularityTheoryEvidence {E : LinearEllipticPDEPackage}
    {P : ParabolicPDEPackage E} {M : MethodOfCharacteristicsPackage P}
    (R : RegularityTheoryPackage M) where
  schauderEstimatesClosed : R.schauderEstimates
  sobolevEmbeddingsClosed : R.sobolevEmbeddings
  bootstrapRegularityClosed : R.bootstrapRegularity
  classicalSolutionHigherRegularClosed : R.classicalSolutionHigherRegular

def RegularityTheoryClosed {E : LinearEllipticPDEPackage}
    {P : ParabolicPDEPackage E} {M : MethodOfCharacteristicsPackage P}
    (R : RegularityTheoryPackage M) : Prop :=
  R.schauderEstimates ∧ R.sobolevEmbeddings ∧ R.bootstrapRegularity ∧
  R.classicalSolutionHigherRegular

theorem regularity_theory_closed_from_evidence
    {E : LinearEllipticPDEPackage} {P : ParabolicPDEPackage E}
    {M : MethodOfCharacteristicsPackage P} (R : RegularityTheoryPackage M)
    (Ev : RegularityTheoryEvidence R) : RegularityTheoryClosed R := by
  exact And.intro Ev.schauderEstimatesClosed
    (And.intro Ev.sobolevEmbeddingsClosed
      (And.intro Ev.bootstrapRegularityClosed
        Ev.classicalSolutionHigherRegularClosed))

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse
