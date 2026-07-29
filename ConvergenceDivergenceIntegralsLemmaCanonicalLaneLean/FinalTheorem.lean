import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean.UniformConvergenceTest
import HautevilleHouse.ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean.ConditionalConvergenceLemma
import HautevilleHouse.ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean.IntegralComparisonTest

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  UniformConvergenceTestClosed (A.object : UniformConvergenceTestPackage) ∧
  ConditionalConvergenceClosed (A.object : ConditionalConvergencePackage) ∧
  IntegralComparisonTestClosed (A.object : IntegralComparisonTestPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  sorry

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedConvergenceDivergenceIntegralsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_convergence_divergence_integrals_endgame (A : AdmissibleClass) :
    ConstrainedConvergenceDivergenceIntegralsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse
