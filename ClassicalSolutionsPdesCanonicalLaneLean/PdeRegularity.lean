import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure PdeRegularityPackage where
  space : ClassicalPdeSpace
  sobolevEmbedding : Prop
  ellipticRegularity : Prop
  parabolicRegularity : Prop

def pdeRegularityClosed (R : PdeRegularityPackage) : Prop :=
  R.sobolevEmbedding ∧ R.ellipticRegularity ∧ R.parabolicRegularity

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse