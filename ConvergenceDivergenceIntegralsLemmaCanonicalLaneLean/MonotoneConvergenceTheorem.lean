import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure MonotoneConvergenceTheoremPackage where
  functionSequence : Type u
  measureSpace : Type v
  pointwiseMonotone : Prop
  nonnegative : Prop
  limitFunction : Type w
  integrableLimit : Prop
  integralConverges : Prop

structure MonotoneConvergenceTheoremEvidence (P : MonotoneConvergenceTheoremPackage) where
  pointwiseMonotoneClosed : P.pointwiseMonotone
  nonnegativeClosed : P.nonnegative
  integrableLimitClosed : P.integrableLimit
  integralConvergesClosed : P.integralConverges

def MonotoneConvergenceTheoremClosed (P : MonotoneConvergenceTheoremPackage) : Prop :=
  P.pointwiseMonotone ∧ P.nonnegative ∧ P.integrableLimit ∧ P.integralConverges

theorem monotone_convergence_theorem_closed_from_evidence
    (P : MonotoneConvergenceTheoremPackage) (E : MonotoneConvergenceTheoremEvidence P) :
    MonotoneConvergenceTheoremClosed P := by
  exact And.intro E.pointwiseMonotoneClosed
    (And.intro E.nonnegativeClosed
      (And.intro E.integrableLimitClosed E.integralConvergesClosed))

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse