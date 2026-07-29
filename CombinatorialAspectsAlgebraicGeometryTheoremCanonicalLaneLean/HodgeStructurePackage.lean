import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean

structure HodgeStructurePackage where
  complexManifold : Type u
  hodgeDecomposition : Prop
  hodgeNumbers : ℕ × ℕ → ℕ
  hodgeDiamond : Prop
  hardLefschetz : Prop
  hodgeDecompositionTerm : hodgeDecomposition
  hardLefschetzTerm : hardLefschetz

structure HodgeStructureEvidence (H : HodgeStructurePackage) where
  hodgeDecompositionClosed : H.hodgeDecomposition
  hardLefschetzClosed : H.hardLefschetz

def HodgeStructureClosed (H : HodgeStructurePackage) : Prop :=
  H.hodgeDecomposition ∧ H.hardLefschetz

theorem hodge_structure_closed_from_evidence (H : HodgeStructurePackage) (E : HodgeStructureEvidence H) :
    HodgeStructureClosed H := by
  exact And.intro E.hodgeDecompositionClosed E.hardLefschetzClosed

end CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse