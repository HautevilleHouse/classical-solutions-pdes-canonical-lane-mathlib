import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ClassicalPdeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse