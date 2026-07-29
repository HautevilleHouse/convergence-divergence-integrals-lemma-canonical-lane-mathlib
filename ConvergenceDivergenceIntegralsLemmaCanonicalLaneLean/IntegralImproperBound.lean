import ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean.IntegralConvergenceTests

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure ImproperBoundPackage where
  integrandDecayCondition : Prop
  integrableNearSingularity : Prop
  boundFunctionExists : Prop
  absoluteConvergence : Prop
  conditionalConvergence : Prop

structure ImproperBoundEvidence (I : ImproperBoundPackage) where
  integrandDecayConditionClosed : I.integrandDecayCondition
  integrableNearSingularityClosed : I.integrableNearSingularity
  boundFunctionExistsClosed : I.boundFunctionExists
  absoluteConvergenceClosed : I.absoluteConvergence
  conditionalConvergenceClosed : I.conditionalConvergence

def ImproperBoundClosed (I : ImproperBoundPackage) : Prop :=
  I.integrandDecayCondition ∧ I.integrableNearSingularity ∧
  I.boundFunctionExists ∧ I.absoluteConvergence ∧ I.conditionalConvergence

theorem improper_bound_closed_from_evidence (I : ImproperBoundPackage) (E : ImproperBoundEvidence I) :
    ImproperBoundClosed I := by
  exact And.intro E.integrandDecayConditionClosed
    (And.intro E.integrableNearSingularityClosed
      (And.intro E.boundFunctionExistsClosed
        (And.intro E.absoluteConvergenceClosed E.conditionalConvergenceClosed)))

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse