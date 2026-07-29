import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean

structure ToricVarietyPackage where
  fan : Type u
  lattice : ℤ^n
  cones : Set (Cone lattice)
  projective : Prop
  cohomologyRing : Prop
  mirrorSymmetry : Prop
  polytope : Prop

structure ToricVarietyEvidence (T : ToricVarietyPackage) where
  projectiveClosed : T.projective
  cohomologyRingClosed : T.cohomologyRing
  mirrorSymmetryClosed : T.mirrorSymmetry
  polytopeClosed : T.polytope

def ToricVarietyClosed (T : ToricVarietyPackage) : Prop :=
  T.projective ∧ T.cohomologyRing ∧ T.mirrorSymmetry ∧ T.polytope

theorem toric_variety_closed_from_evidence (T : ToricVarietyPackage)
    (E : ToricVarietyEvidence T) : ToricVarietyClosed T := by
  exact And.intro E.projectiveClosed
    (And.intro E.cohomologyRingClosed
      (And.intro E.mirrorSymmetryClosed E.polytopeClosed))

end CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse