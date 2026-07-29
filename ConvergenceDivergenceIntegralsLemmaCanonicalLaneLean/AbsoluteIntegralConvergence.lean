import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure AbsoluteIntegralConvergencePackage where
  integrand : Type u
  domain : Type v
  absoluteIntegrability : Prop
  unconditionalConvergence : Prop
  integrabilityBound : Prop
  comparisonPrinciple : Prop

structure AbsoluteIntegralConvergenceEvidence (P : AbsoluteIntegralConvergencePackage) where
  absoluteIntegrabilityClosed : P.absoluteIntegrability
  unconditionalConvergenceClosed : P.unconditionalConvergence
  integrabilityBoundClosed : P.integrabilityBound
  comparisonPrincipleClosed : P.comparisonPrinciple

def AbsoluteIntegralConvergenceClosed (P : AbsoluteIntegralConvergencePackage) : Prop :=
  P.absoluteIntegrability ∧ P.unconditionalConvergence ∧ P.integrabilityBound ∧ P.comparisonPrinciple

theorem absolute_integral_convergence_closed_from_evidence
    (P : AbsoluteIntegralConvergencePackage) (E : AbsoluteIntegralConvergenceEvidence P) :
    AbsoluteIntegralConvergenceClosed P := by
  exact And.intro E.absoluteIntegrabilityClosed
    (And.intro E.unconditionalConvergenceClosed
      (And.intro E.integrabilityBoundClosed E.comparisonPrincipleClosed))

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse