import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure ImproperIntegralComparisonPackage where
  integrandF : Type u
  integrandG : Type v
  interval : Set ℝ
  improperEndpoint : ℝ
  nonnegativityF : Prop
  nonnegativityG : Prop
  asymptoticComparison : Prop
  convergenceTransfer : Prop
  divergenceTransfer : Prop

structure ImproperIntegralComparisonEvidence (P : ImproperIntegralComparisonPackage) where
  nonnegativityFClosed : P.nonnegativityF
  nonnegativityGClosed : P.nonnegativityG
  asymptoticComparisonClosed : P.asymptoticComparison
  convergenceTransferClosed : P.convergenceTransfer
  divergenceTransferClosed : P.divergenceTransfer

def ImproperIntegralComparisonClosed (P : ImproperIntegralComparisonPackage) : Prop :=
  P.nonnegativityF ∧ P.nonnegativityG ∧ P.asymptoticComparison ∧
  P.convergenceTransfer ∧ P.divergenceTransfer

theorem improper_integral_comparison_closed_from_evidence
    (P : ImproperIntegralComparisonPackage) (E : ImproperIntegralComparisonEvidence P) :
    ImproperIntegralComparisonClosed P := by
  exact And.intro E.nonnegativityFClosed
    (And.intro E.nonnegativityGClosed
      (And.intro E.asymptoticComparisonClosed
        (And.intro E.convergenceTransferClosed E.divergenceTransferClosed)))

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse