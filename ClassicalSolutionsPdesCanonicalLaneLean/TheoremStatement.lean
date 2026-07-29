import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSolutionsPdesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String := "classical-solutions-pdes-canonical-lane"

def sourceDescription : String := "Classical Solutions of PDEs: existence, uniqueness, and regularity for elliptic and parabolic equations"

def sourceTheoremBoundary : String := "Unrestricted classical PDE theory remains outside the admitted class."

def baselineCertificateLane : String := "manifold_constrained"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary,
  manifoldConstrainedStatement := "Existence, uniqueness, and regularity of classical solutions for a class of elliptic and parabolic PDEs on smooth domains.",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "Full classical PDE theory (e.g., Sobolev spaces, nonlinear operators) remains external to this closure."
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

end ClassicalSolutionsPdesCanonicalLaneLean
end HautevilleHouse