import CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def combinatorialProjection : Projection CombinatorialEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem combinatorial_projection_idempotent (x : CombinatorialEndgameState) :
    combinatorialProjection.toFun (combinatorialProjection.toFun x) = combinatorialProjection.toFun x := by
  exact combinatorialProjection.idempotent x

end CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse