import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean

structure QuiverRepresentationPackage where
  quiver : Type u
  vertexRing : Type v
  representation : VertexMap → (RingModule vertexRing)
  dimensionVector : VertexMap ℕ
  stabilityCondition : Prop
  moduliSpace : Prop
  wallCrossing : Prop

structure QuiverRepresentationEvidence (Q : QuiverRepresentationPackage) where
  stabilityConditionClosed : Q.stabilityCondition
  moduliSpaceClosed : Q.moduliSpace
  wallCrossingClosed : Q.wallCrossing

def QuiverRepresentationClosed (Q : QuiverRepresentationPackage) : Prop :=
  Q.stabilityCondition ∧ Q.moduliSpace ∧ Q.wallCrossing

theorem quiver_representation_closed_from_evidence (Q : QuiverRepresentationPackage)
    (E : QuiverRepresentationEvidence Q) : QuiverRepresentationClosed Q := by
  exact And.intro E.stabilityConditionClosed
    (And.intro E.moduliSpaceClosed E.wallCrossingClosed)

end CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse