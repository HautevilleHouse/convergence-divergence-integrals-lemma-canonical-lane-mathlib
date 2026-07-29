import ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ConvergenceDivergenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ConvergenceDivergenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse