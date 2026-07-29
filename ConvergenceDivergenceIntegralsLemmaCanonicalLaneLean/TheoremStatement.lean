import Mathlib

namespace HautevilleHouse
namespace ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean

structure ConvergenceDivergenceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ConvergenceDivergenceAdmittedObject where
  space : ConvergenceDivergenceSpace
  integralConverges : Prop
  integralDiverges : Prop
  limitComparison : Prop
  conclusion : limitComparison

structure ConvergenceDivergenceEndgameState where
  object : ConvergenceDivergenceAdmittedObject

def ConvergenceDivergenceWitnessClosed (O : ConvergenceDivergenceAdmittedObject) : Prop :=
  O.limitComparison

end ConvergenceDivergenceIntegralsLemmaCanonicalLaneLean
end HautevilleHouse