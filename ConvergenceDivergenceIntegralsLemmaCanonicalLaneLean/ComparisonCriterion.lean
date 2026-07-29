import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure ComparisonPair where
  integrand1 : ℝ → ℝ
  integrand2 : ℝ → ℝ
  inequality : Prop

structure ComparisonCriterion where
  referenceIntegralConverges : Prop
  directComparison : ComparisonPair
  limitComparison : ComparisonPair

def ComparisonClosed (C : ComparisonCriterion) : Prop :=
  C.referenceIntegralConverges ∧ C.directComparison.inequality ∧ C.limitComparison.inequality

theorem comparison_closed_from_evidence (C : ComparisonCriterion) (h : C.referenceIntegralConverges ∧ C.directComparison.inequality ∧ C.limitComparison.inequality) : ComparisonClosed C :=
  h

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse