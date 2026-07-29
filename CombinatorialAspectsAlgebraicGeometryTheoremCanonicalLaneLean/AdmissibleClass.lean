import CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AlgebraicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AlgebraicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse