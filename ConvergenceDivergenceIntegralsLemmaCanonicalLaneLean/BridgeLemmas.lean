import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AdmittedClosure A

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.endpointSatisfied ∨ A.remainderRecorded

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse