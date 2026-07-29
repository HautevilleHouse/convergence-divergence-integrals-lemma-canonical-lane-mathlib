import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure PartialSumBoundPackage where
  sequence : ℕ → ℝ
  bound : ℝ
  boundProperty : Prop
  monotone : Prop
  monotoneProof : monotone
  boundPropertyProof : boundProperty

structure PartialSumBoundEvidence (P : PartialSumBoundPackage) where
  monotoneClosed : P.monotone
  boundPropertyClosed : P.boundProperty

def PartialSumBoundClosed (P : PartialSumBoundPackage) : Prop :=
  P.monotone ∧ P.boundProperty

theorem partial_sum_bound_closed_from_evidence (P : PartialSumBoundPackage)
    (E : PartialSumBoundEvidence P) : PartialSumBoundClosed P := by
  exact And.intro E.monotoneClosed E.boundPropertyClosed

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse