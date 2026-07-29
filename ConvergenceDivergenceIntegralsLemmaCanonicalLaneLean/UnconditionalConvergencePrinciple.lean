import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure UnconditionalConvergencePrinciplePackage where
  integralSequence : Type u
  absoluteConvergence : Prop
  rearrangementInvariant : Prop
  sumUnchanged : Prop
  divergenceCase : Prop

structure UnconditionalConvergencePrincipleEvidence (P : UnconditionalConvergencePrinciplePackage) where
  absoluteConvergenceClosed : P.absoluteConvergence
  rearrangementInvariantClosed : P.rearrangementInvariant
  sumUnchangedClosed : P.sumUnchanged
  divergenceCaseClosed : P.divergenceCase

def UnconditionalConvergencePrincipleClosed (P : UnconditionalConvergencePrinciplePackage) : Prop :=
  P.absoluteConvergence ∧ P.rearrangementInvariant ∧ P.sumUnchanged ∧ P.divergenceCase

theorem unconditional_convergence_principle_closed_from_evidence
    (P : UnconditionalConvergencePrinciplePackage) (E : UnconditionalConvergencePrincipleEvidence P) :
    UnconditionalConvergencePrincipleClosed P := by
  exact And.intro E.absoluteConvergenceClosed
    (And.intro E.rearrangementInvariantClosed
      (And.intro E.sumUnchangedClosed E.divergenceCaseClosed))

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse