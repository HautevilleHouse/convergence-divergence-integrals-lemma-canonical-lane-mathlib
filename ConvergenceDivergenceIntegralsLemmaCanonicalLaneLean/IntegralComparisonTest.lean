import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure IntegralComparisonTestPackage where
  integrandF : ℝ → ℝ
  integrandG : ℝ → ℝ
  domain : Set ℝ
  fNonnegative : Prop
  gNonnegative : Prop
  fLessOrEqualG : Prop
  gIntegrable : Prop
  fIntegrable : Prop

structure IntegralComparisonTestEvidence (I : IntegralComparisonTestPackage) where
  fNonnegativeClosed : I.fNonnegative
  gNonnegativeClosed : I.gNonnegative
  fLessOrEqualGClosed : I.fLessOrEqualG
  gIntegrableClosed : I.gIntegrable
  fIntegrableClosed : I.fIntegrable

def IntegralComparisonTestClosed (I : IntegralComparisonTestPackage) : Prop :=
  I.fNonnegative ∧ I.gNonnegative ∧ I.fLessOrEqualG ∧ I.gIntegrable ∧ I.fIntegrable

theorem integral_comparison_test_closed_from_evidence (I : IntegralComparisonTestPackage) (E : IntegralComparisonTestEvidence I) :
    IntegralComparisonTestClosed I := by
  exact And.intro E.fNonnegativeClosed
    (And.intro E.gNonnegativeClosed
      (And.intro E.fLessOrEqualGClosed
        (And.intro E.gIntegrableClosed E.fIntegrableClosed)))

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse
