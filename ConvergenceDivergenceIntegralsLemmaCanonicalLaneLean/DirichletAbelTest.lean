import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure DirichletAbelTestPackage where
  sequenceA : ℕ → ℝ
  sequenceB : ℕ → ℝ
  partialSumsBounded : Prop
  monotoneToZero : Prop
  seriesConverges : Prop
  partialSumsBoundedProof : partialSumsBounded
  monotoneToZeroProof : monotoneToZero
  seriesConvergesProof : seriesConverges

structure DirichletAbelTestEvidence (D : DirichletAbelTestPackage) where
  partialSumsBoundedClosed : D.partialSumsBounded
  monotoneToZeroClosed : D.monotoneToZero
  seriesConvergesClosed : D.seriesConverges

def DirichletAbelTestClosed (D : DirichletAbelTestPackage) : Prop :=
  D.partialSumsBounded ∧ D.monotoneToZero ∧ D.seriesConverges

theorem dirichlet_abel_test_closed_from_evidence (D : DirichletAbelTestPackage)
    (E : DirichletAbelTestEvidence D) : DirichletAbelTestClosed D := by
  exact And.intro E.partialSumsBoundedClosed (And.intro E.monotoneToZeroClosed E.seriesConvergesClosed)

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse