import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure ConvergenceCriteriaPackage where
  cauchyCriterion : Prop
  absoluteConvergence : Prop
  comparisonTest : Prop
  ratioTest : Prop
  rootTest : Prop
  integralTest : Prop
  convergenceCriteriaClosed : Prop

structure ConvergenceCriteriaEvidence (C : ConvergenceCriteriaPackage) where
  cauchyCriterionClosed : C.cauchyCriterion
  absoluteConvergenceClosed : C.absoluteConvergence
  comparisonTestClosed : C.comparisonTest
  ratioTestClosed : C.ratioTest
  rootTestClosed : C.rootTest
  integralTestClosed : C.integralTest

def ConvergenceCriteriaClosed (C : ConvergenceCriteriaPackage) : Prop :=
  C.cauchyCriterion ∧ C.absoluteConvergence ∧ C.comparisonTest ∧
  C.ratioTest ∧ C.rootTest ∧ C.integralTest

theorem convergence_criteria_closed_from_evidence (C : ConvergenceCriteriaPackage)
    (E : ConvergenceCriteriaEvidence C) : ConvergenceCriteriaClosed C := by
  exact And.intro E.cauchyCriterionClosed
    (And.intro E.absoluteConvergenceClosed
      (And.intro E.comparisonTestClosed
        (And.intro E.ratioTestClosed
          (And.intro E.rootTestClosed E.integralTestClosed))))

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse