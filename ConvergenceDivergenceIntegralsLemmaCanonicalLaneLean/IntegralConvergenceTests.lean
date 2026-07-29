import ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean.ConvergenceAdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure ComparisonTestPackage where
  integrandPositive : Prop
  comparisonFunctionDefined : Prop
  limitComparisonInequality : Prop
  convergenceFollows : Prop
  divergenceFollows : Prop

structure ComparisonTestEvidence (C : ComparisonTestPackage) where
  integrandPositiveClosed : C.integrandPositive
  comparisonFunctionDefinedClosed : C.comparisonFunctionDefined
  limitComparisonInequalityClosed : C.limitComparisonInequality
  convergenceFollowsClosed : C.convergenceFollows
  divergenceFollowsClosed : C.divergenceFollows

def ComparisonTestClosed (C : ComparisonTestPackage) : Prop :=
  C.integrandPositive ∧ C.comparisonFunctionDefined ∧
  C.limitComparisonInequality ∧ C.convergenceFollows ∧ C.divergenceFollows

theorem comparison_test_closed_from_evidence (C : ComparisonTestPackage) (E : ComparisonTestEvidence C) :
    ComparisonTestClosed C := by
  exact And.intro E.integrandPositiveClosed
    (And.intro E.comparisonFunctionDefinedClosed
      (And.intro E.limitComparisonInequalityClosed
        (And.intro E.convergenceFollowsClosed E.divergenceFollowsClosed)))

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse