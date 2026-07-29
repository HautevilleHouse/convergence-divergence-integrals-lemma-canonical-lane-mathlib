import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure UniformConvergenceTestPackage where
  sequence : Type u
  pointwiseLimitExists : Prop
  uniformCauchyCondition : Prop
  uniformLimit : Prop
  uniformLimitContinuous : Prop
  domainCompact : Prop

structure UniformConvergenceTestEvidence (U : UniformConvergenceTestPackage) where
  pointwiseLimitExistsClosed : U.pointwiseLimitExists
  uniformCauchyConditionClosed : U.uniformCauchyCondition
  uniformLimitClosed : U.uniformLimit
  uniformLimitContinuousClosed : U.uniformLimitContinuous
  domainCompactClosed : U.domainCompact

def UniformConvergenceTestClosed (U : UniformConvergenceTestPackage) : Prop :=
  U.pointwiseLimitExists ∧ U.uniformCauchyCondition ∧ U.uniformLimit ∧ U.uniformLimitContinuous ∧ U.domainCompact

theorem uniform_convergence_test_closed_from_evidence (U : UniformConvergenceTestPackage) (E : UniformConvergenceTestEvidence U) :
    UniformConvergenceTestClosed U := by
  exact And.intro E.pointwiseLimitExistsClosed
    (And.intro E.uniformCauchyConditionClosed
      (And.intro E.uniformLimitClosed
        (And.intro E.uniformLimitContinuousClosed E.domainCompactClosed)))

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse
