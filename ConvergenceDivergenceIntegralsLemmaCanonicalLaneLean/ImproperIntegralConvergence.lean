import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure ImproperIntegral where
  integrand : ℝ → ℝ
  domain : Set ℝ
  limitExists : Prop
  finiteValue : Prop

structure ImproperIntegralEvidence (I : ImproperIntegral) where
  limitExistsClosed : I.limitExists
  finiteValueClosed : I.finiteValue

def ImproperIntegralClosed (I : ImproperIntegral) : Prop :=
  I.limitExists ∧ I.finiteValue

theorem improper_integral_closed_from_evidence (I : ImproperIntegral) (E : ImproperIntegralEvidence I) : ImproperIntegralClosed I :=
  And.intro E.limitExistsClosed E.finiteValueClosed

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse