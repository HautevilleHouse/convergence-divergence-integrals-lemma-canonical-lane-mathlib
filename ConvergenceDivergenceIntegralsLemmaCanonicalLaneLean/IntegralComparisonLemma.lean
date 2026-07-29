import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure IntegralComparisonLemmaPackage where
  f g : ℝ → ℝ
  integrableOn : Set ℝ → Prop
  dominatedBy : Prop
  integralConvergesImplies : Prop
  dominatedByProof : dominatedBy
  integralConvergesImpliesProof : integralConvergesImplies

structure IntegralComparisonLemmaEvidence (L : IntegralComparisonLemmaPackage) where
  dominatedByClosed : L.dominatedBy
  integralConvergesImpliesClosed : L.integralConvergesImplies

def IntegralComparisonLemmaClosed (L : IntegralComparisonLemmaPackage) : Prop :=
  L.dominatedBy ∧ L.integralConvergesImplies

theorem integral_comparison_lemma_closed_from_evidence (L : IntegralComparisonLemmaPackage)
    (E : IntegralComparisonLemmaEvidence L) : IntegralComparisonLemmaClosed L := by
  exact And.intro E.dominatedByClosed E.integralConvergesImpliesClosed

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse