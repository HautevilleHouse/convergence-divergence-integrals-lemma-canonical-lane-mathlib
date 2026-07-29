import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure DivergenceTestsPackage where
  termDivergence : Prop
  comparisonDivergence : Prop
  ratioDivergence : Prop
  limitComparisonDivergence : Prop
  divergenceTestsClosed : Prop

structure DivergenceTestsEvidence (D : DivergenceTestsPackage) where
  termDivergenceClosed : D.termDivergence
  comparisonDivergenceClosed : D.comparisonDivergence
  ratioDivergenceClosed : D.ratioDivergence
  limitComparisonDivergenceClosed : D.limitComparisonDivergence

def DivergenceTestsClosed (D : DivergenceTestsPackage) : Prop :=
  D.termDivergence ∧ D.comparisonDivergence ∧ D.ratioDivergence ∧ D.limitComparisonDivergence

theorem divergence_tests_closed_from_evidence (D : DivergenceTestsPackage)
    (E : DivergenceTestsEvidence D) : DivergenceTestsClosed D := by
  exact And.intro E.termDivergenceClosed
    (And.intro E.comparisonDivergenceClosed
      (And.intro E.ratioDivergenceClosed E.limitComparisonDivergenceClosed))

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse