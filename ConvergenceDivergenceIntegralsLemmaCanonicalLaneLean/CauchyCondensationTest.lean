import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure CauchyCondensationTestPackage where
  sequence : ℕ → ℝ
  condensationTestApplied : Prop
  convergenceCriterion : Prop
  condensationTestAppliedProof : condensationTestApplied
  convergenceCriterionProof : convergenceCriterion

structure CauchyCondensationTestEvidence (C : CauchyCondensationTestPackage) where
  condensationTestAppliedClosed : C.condensationTestApplied
  convergenceCriterionClosed : C.convergenceCriterion

def CauchyCondensationTestClosed (C : CauchyCondensationTestPackage) : Prop :=
  C.condensationTestApplied ∧ C.convergenceCriterion

theorem cauchy_condensation_test_closed_from_evidence (C : CauchyCondensationTestPackage)
    (E : CauchyCondensationTestEvidence C) : CauchyCondensationTestClosed C := by
  exact And.intro E.condensationTestAppliedClosed E.convergenceCriterionClosed

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse