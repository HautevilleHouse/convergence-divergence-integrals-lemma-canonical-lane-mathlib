import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure FunctionSeriesIntegralPackage where
  domain : Type u
  measure : Type v
  integrableCondition : Prop
  seriesConvergence : Prop
  termwiseIntegralEquality : Prop
  dominatedConvergence : Prop

structure FunctionSeriesIntegralEvidence (P : FunctionSeriesIntegralPackage) where
  integrableConditionClosed : P.integrableCondition
  seriesConvergenceClosed : P.seriesConvergence
  termwiseIntegralEqualityClosed : P.termwiseIntegralEquality
  dominatedConvergenceClosed : P.dominatedConvergence

def FunctionSeriesIntegralClosed (P : FunctionSeriesIntegralPackage) : Prop :=
  P.integrableCondition ∧ P.seriesConvergence ∧ P.termwiseIntegralEquality ∧ P.dominatedConvergence

theorem function_series_integral_closed_from_evidence
    (P : FunctionSeriesIntegralPackage) (E : FunctionSeriesIntegralEvidence P) :
    FunctionSeriesIntegralClosed P := by
  exact And.intro E.integrableConditionClosed
    (And.intro E.seriesConvergenceClosed
      (And.intro E.termwiseIntegralEqualityClosed E.dominatedConvergenceClosed))

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse