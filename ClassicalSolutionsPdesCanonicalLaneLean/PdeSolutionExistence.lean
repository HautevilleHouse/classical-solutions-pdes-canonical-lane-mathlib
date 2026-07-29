import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure PdeSolutionExistencePackage where
  space : ClassicalPdeSpace
  localExistence : Prop
  globalExistence : Prop
  uniqueness : Prop

def pdeSolutionExistenceClosed (S : PdeSolutionExistencePackage) : Prop :=
  S.localExistence ∧ S.globalExistence ∧ S.uniqueness

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse