import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure AbsoluteConvergenceTestPackage where
  series : ℕ → ℝ
  comparisonSeries : ℕ → ℝ
  comparisonConverges : Prop
  absoluteConvergenceImplication : Prop
  comparisonConvergesProof : comparisonConverges
  absoluteConvergenceImplicationProof : absoluteConvergenceImplication

structure AbsoluteConvergenceTestEvidence (T : AbsoluteConvergenceTestPackage) where
  comparisonConvergesClosed : T.comparisonConverges
  absoluteConvergenceImplicationClosed : T.absoluteConvergenceImplication

def AbsoluteConvergenceTestClosed (T : AbsoluteConvergenceTestPackage) : Prop :=
  T.comparisonConverges ∧ T.absoluteConvergenceImplication

theorem absolute_convergence_test_closed_from_evidence (T : AbsoluteConvergenceTestPackage)
    (E : AbsoluteConvergenceTestEvidence T) : AbsoluteConvergenceTestClosed T := by
  exact And.intro E.comparisonConvergesClosed E.absoluteConvergenceImplicationClosed

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse