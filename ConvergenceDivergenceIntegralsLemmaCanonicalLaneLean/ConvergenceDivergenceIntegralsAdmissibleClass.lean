import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure ConvergenceDivergenceIntegralsAdmissibleClass where
  object : ConvergenceDivergenceIntegralsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : ConvergenceDivergenceIntegralsAdmissibleClass) : Prop :=
  ConvergenceDivergenceIntegralsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse