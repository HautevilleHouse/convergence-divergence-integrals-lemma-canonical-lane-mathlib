import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure AbsoluteConvergence where
  integrand : ℝ → ℝ
  absoluteValueIntegrable : Prop
  originalIntegrable : Prop
  implicationProven : Prop

structure AbsoluteConvergenceEvidence (A : AbsoluteConvergence) where
  absoluteValueIntegrableClosed : A.absoluteValueIntegrable
  originalIntegrableClosed : A.originalIntegrable
  implicationProvenClosed : A.implicationProven

def AbsoluteConvergenceClosed (A : AbsoluteConvergence) : Prop :=
  A.absoluteValueIntegrable ∧ A.originalIntegrable ∧ A.implicationProven

theorem absolute_convergence_closed_from_evidence (A : AbsoluteConvergence) (E : AbsoluteConvergenceEvidence A) : AbsoluteConvergenceClosed A :=
  And.intro E.absoluteValueIntegrableClosed (And.intro E.originalIntegrableClosed E.implicationProvenClosed)

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse