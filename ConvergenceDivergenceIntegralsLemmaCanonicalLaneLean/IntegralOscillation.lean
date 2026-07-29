import ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean.IntegralImproperBound

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure OscillationPackage where
  integrandBounded : Prop
  cancellationCondition : Prop
  dirichletTestCondition : Prop
  abelTestCondition : Prop
  convergenceCriterion : Prop

structure OscillationEvidence (O : OscillationPackage) where
  integrandBoundedClosed : O.integrandBounded
  cancellationConditionClosed : O.cancellationCondition
  dirichletTestConditionClosed : O.dirichletTestCondition
  abelTestConditionClosed : O.abelTestCondition
  convergenceCriterionClosed : O.convergenceCriterion

def OscillationClosed (O : OscillationPackage) : Prop :=
  O.integrandBounded ∧ O.cancellationCondition ∧
  O.dirichletTestCondition ∧ O.abelTestCondition ∧ O.convergenceCriterion

theorem oscillation_closed_from_evidence (O : OscillationPackage) (E : OscillationEvidence O) :
    OscillationClosed O := by
  exact And.intro E.integrandBoundedClosed
    (And.intro E.cancellationConditionClosed
      (And.intro E.dirichletTestConditionClosed
        (And.intro E.abelTestConditionClosed E.convergenceCriterionClosed)))

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse