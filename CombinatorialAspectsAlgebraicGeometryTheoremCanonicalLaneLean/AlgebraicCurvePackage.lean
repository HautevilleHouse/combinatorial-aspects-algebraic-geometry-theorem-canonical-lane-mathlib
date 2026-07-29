import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean

structure AlgebraicCurvePackage where
  curveType : Type u
  genus : Nat
  degree : Nat
  smoothness : Prop
  irreducibility : Prop
  genusFromDegree : Prop
  smoothnessTerm : smoothness
  irreducibilityTerm : irreducibility

structure AlgebraicCurveEvidence (C : AlgebraicCurvePackage) where
  smoothnessClosed : C.smoothness
  irreducibilityClosed : C.irreducibility
  genusFromDegreeClosed : C.genusFromDegree

def AlgebraicCurveClosed (C : AlgebraicCurvePackage) : Prop :=
  C.smoothness ∧ C.irreducibility ∧ C.genusFromDegree

theorem algebraic_curve_closed_from_evidence (C : AlgebraicCurvePackage) (E : AlgebraicCurveEvidence C) :
    AlgebraicCurveClosed C := by
  exact And.intro E.smoothnessClosed (And.intro E.irreducibilityClosed E.genusFromDegreeClosed)

end CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse