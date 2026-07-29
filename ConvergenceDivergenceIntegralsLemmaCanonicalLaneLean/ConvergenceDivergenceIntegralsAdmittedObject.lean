import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure ConvergenceDivergenceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ConvergenceDivergenceIntegralsAdmittedObject where
  space : ConvergenceDivergenceSpace
  integralConverges : Prop
  integralDiverges : Prop
  limitExists : Prop
  conclusion : integralConverges ∨ integralDiverges

def ConvergenceDivergenceIntegralsWitnessClosed (O : ConvergenceDivergenceIntegralsAdmittedObject) : Prop :=
  O.limitExists

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse