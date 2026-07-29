import canonicalLaneMathlib.SchemeTheory

/-!
# Catalan Closed Ideal Package
-/

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheorem

structure CatalanClosedIdealPackage where
  groundField : Type
  polynomialRing : Type
  ideal : polynomialRing → Prop
  catalanNumbers : Nat → Nat
  genericallyReduced : Prop
  initialIdeal : Prop
  flatDegenerations : Prop

structure CatalanClosedIdealEvidence (C : CatalanClosedIdealPackage) where
  genericallyReducedClosed : C.genericallyReduced
  initialIdealClosed : C.initialIdeal
  flatDegenerationsClosed : C.flatDegenerations

def CatalanClosedIdealClosed (C : CatalanClosedIdealPackage) : Prop :=
  C.genericallyReduced ∧ C.initialIdeal ∧ C.flatDegenerations

theorem catalan_closed_ideal_closed_from_evidence (C : CatalanClosedIdealPackage)
    (E : CatalanClosedIdealEvidence C) : CatalanClosedIdealClosed C := by
  exact And.intro E.genericallyReducedClosed
    (And.intro E.initialIdealClosed E.flatDegenerationsClosed)

end CombinatorialAspectsAlgebraicGeometryTheorem
end HautevilleHouse