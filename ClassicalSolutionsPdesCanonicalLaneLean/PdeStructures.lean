import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure PdeEnergyPackage where
  space : ClassicalPdeSpace
  energyFunctional : Type
  coercivity : Prop
  continuity : Prop

def pdeEnergyClosed (E : PdeEnergyPackage) : Prop :=
  E.coercivity ∧ E.continuity

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse