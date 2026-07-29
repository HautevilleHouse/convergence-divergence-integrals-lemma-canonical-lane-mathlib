import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure IntegralSeries where
  term : Nat → ℝ
  partialSums : Nat → ℝ
  convergence : Prop

structure IntegralTestEvidence where
  monotoneDecreasing : Prop
  integralConverges : Prop
  seriesConverges : Prop

structure IntegralTestBoundary where
  series : IntegralSeries
  evidence : IntegralTestEvidence

def IntegralTestClosed (I : IntegralTestBoundary) : Prop :=
  I.evidence.monotoneDecreasing ∧ I.evidence.integralConverges ∧ I.evidence.seriesConverges

theorem integral_test_closed_from_evidence (I : IntegralTestBoundary) (h : I.evidence.monotoneDecreasing ∧ I.evidence.integralConverges ∧ I.evidence.seriesConverges) : IntegralTestClosed I :=
  h

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse