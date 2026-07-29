import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure ConvergenceAdmissibleObject where
  space : Type u
  measure : Type v
  integrableCondition : Prop
  convergenceCondition : Prop
  divergenceCondition : Prop
  conclusion : convergenceCondition ∨ divergenceCondition

structure AdmissibleClass where
  object : ConvergenceAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ConvgDivWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def ConvgDivWitnessClosed (O : ConvergenceAdmissibleObject) : Prop :=
  O.conclusion

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse