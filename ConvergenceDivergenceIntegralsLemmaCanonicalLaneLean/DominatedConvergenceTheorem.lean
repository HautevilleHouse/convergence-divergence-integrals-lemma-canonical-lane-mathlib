import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure DominatedConvergenceTheoremPackage where
  functionSequence : Type u
  measureSpace : Type v
  pointwiseConvergence : Prop
  dominatingFunction : Type w
  dominatingIntegrable : Prop
  limitIntegrable : Prop
  integralConverges : Prop

structure DominatedConvergenceTheoremEvidence (P : DominatedConvergenceTheoremPackage) where
  pointwiseConvergenceClosed : P.pointwiseConvergence
  dominatingIntegrableClosed : P.dominatingIntegrable
  limitIntegrableClosed : P.limitIntegrable
  integralConvergesClosed : P.integralConverges

def DominatedConvergenceTheoremClosed (P : DominatedConvergenceTheoremPackage) : Prop :=
  P.pointwiseConvergence ∧ P.dominatingIntegrable ∧ P.limitIntegrable ∧ P.integralConverges

theorem dominated_convergence_theorem_closed_from_evidence
    (P : DominatedConvergenceTheoremPackage) (E : DominatedConvergenceTheoremEvidence P) :
    DominatedConvergenceTheoremClosed P := by
  exact And.intro E.pointwiseConvergenceClosed
    (And.intro E.dominatingIntegrableClosed
      (And.intro E.limitIntegrableClosed E.integralConvergesClosed))

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse