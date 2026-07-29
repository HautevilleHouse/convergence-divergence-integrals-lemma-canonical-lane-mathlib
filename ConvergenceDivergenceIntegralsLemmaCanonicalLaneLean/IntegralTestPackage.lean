import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure IntegralTestPackage where
  monotoneDecreasing : Prop
  integralComparison : Prop
  pSeriesConvergence : Prop
  pSeriesDivergence : Prop
  integralTestClosed : Prop

structure IntegralTestEvidence (I : IntegralTestPackage) where
  monotoneDecreasingClosed : I.monotoneDecreasing
  integralComparisonClosed : I.integralComparison
  pSeriesConvergenceClosed : I.pSeriesConvergence
  pSeriesDivergenceClosed : I.pSeriesDivergence

def IntegralTestClosed (I : IntegralTestPackage) : Prop :=
  I.monotoneDecreasing ∧ I.integralComparison ∧ I.pSeriesConvergence ∧ I.pSeriesDivergence

theorem integral_test_closed_from_evidence (I : IntegralTestPackage)
    (E : IntegralTestEvidence I) : IntegralTestClosed I := by
  exact And.intro E.monotoneDecreasingClosed
    (And.intro E.integralComparisonClosed
      (And.intro E.pSeriesConvergenceClosed E.pSeriesDivergenceClosed))

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse