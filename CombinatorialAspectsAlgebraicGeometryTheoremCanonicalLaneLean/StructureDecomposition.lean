import CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean.UniversalProperty

/-!
# Structure Decomposition Package
-/

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean

structure StructureDecompositionPackage {O : CombinatorialAdmittedObject}
    (U : UniversalPropertyPackage O) where
  directSumDecomposition : Prop
  indecomposableComponentsClassified : Prop
  decompositionUnique : Prop

structure StructureDecompositionEvidence {O : CombinatorialAdmittedObject}
    {U : UniversalPropertyPackage O} (D : StructureDecompositionPackage U) where
  directSumDecompositionClosed : D.directSumDecomposition
  indecomposableComponentsClassifiedClosed : D.indecomposableComponentsClassified
  decompositionUniqueClosed : D.decompositionUnique

def StructureDecompositionClosed {O : CombinatorialAdmittedObject}
    {U : UniversalPropertyPackage O} (D : StructureDecompositionPackage U) : Prop :=
  D.directSumDecomposition ∧ D.indecomposableComponentsClassified ∧ D.decompositionUnique

theorem structure_decomposition_closed_from_evidence
    {O : CombinatorialAdmittedObject} {U : UniversalPropertyPackage O}
    (D : StructureDecompositionPackage U) (E : StructureDecompositionEvidence D) :
    StructureDecompositionClosed D := by
  exact And.intro E.directSumDecompositionClosed
    (And.intro E.indecomposableComponentsClassifiedClosed E.decompositionUniqueClosed)

end CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse