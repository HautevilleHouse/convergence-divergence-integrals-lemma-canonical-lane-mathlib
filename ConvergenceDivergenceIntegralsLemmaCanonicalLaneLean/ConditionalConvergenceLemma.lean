import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure ConditionalConvergencePackage where
  seriesTerm : ℕ → ℝ
  limitExists : Prop
  rearrangementSum : ℝ
  absoluteConvergenceAbsent : Prop
  dirichletTestCondition : Prop
  abelTestCondition : Prop

structure ConditionalConvergenceEvidence (C : ConditionalConvergencePackage) where
  limitExistsClosed : C.limitExists
  rearrangementSumClosed : C.rearrangementSum = 0
  absoluteConvergenceAbsentClosed : C.absoluteConvergenceAbsent
  dirichletTestConditionClosed : C.dirichletTestCondition
  abelTestConditionClosed : C.abelTestCondition

def ConditionalConvergenceClosed (C : ConditionalConvergencePackage) : Prop :=
  C.limitExists ∧ (C.rearrangementSum = 0) ∧ C.absoluteConvergenceAbsent ∧ C.dirichletTestCondition ∧ C.abelTestCondition

theorem conditional_convergence_closed_from_evidence (C : ConditionalConvergencePackage) (E : ConditionalConvergenceEvidence C) :
    ConditionalConvergenceClosed C := by
  exact And.intro E.limitExistsClosed
    (And.intro E.rearrangementSumClosed
      (And.intro E.absoluteConvergenceAbsentClosed
        (And.intro E.dirichletTestConditionClosed E.abelTestConditionClosed)))

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse
