import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean

structure IntersectionTheoryPackage where
  varietyType : Type u
  cycleMap : Type v
  intersectionProduct : Type w
  wellDefinedness : Prop
  commutativity : Prop
  associativity : Prop
  wellDefinednessTerm : wellDefinedness
  commutativityTerm : commutativity
  associativityTerm : associativity

structure IntersectionTheoryEvidence (I : IntersectionTheoryPackage) where
  wellDefinednessClosed : I.wellDefinedness
  commutativityClosed : I.commutativity
  associativityClosed : I.associativity

def IntersectionTheoryClosed (I : IntersectionTheoryPackage) : Prop :=
  I.wellDefinedness ∧ I.commutativity ∧ I.associativity

theorem intersection_theory_closed_from_evidence (I : IntersectionTheoryPackage) (E : IntersectionTheoryEvidence I) :
    IntersectionTheoryClosed I := by
  exact And.intro E.wellDefinednessClosed (And.intro E.commutativityClosed E.associativityClosed)

end CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse