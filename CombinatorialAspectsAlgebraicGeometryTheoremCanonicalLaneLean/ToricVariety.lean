import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean

structure ToricVarietyPackage where
  fan : Type u
  polytope : Type v
  dimension : Nat
  complete : Prop
  smooth : Prop
  projective : Prop

structure ToricVarietyEvidence (T : ToricVarietyPackage) where
  fanCompleteClosed : T.complete
  fanSmoothClosed : T.smooth
  projectiveClosed : T.projective

def ToricVarietyClosed (T : ToricVarietyPackage) : Prop :=
  T.complete ∧ T.smooth ∧ T.projective

theorem toric_variety_closed_from_evidence (T : ToricVarietyPackage) (E : ToricVarietyEvidence T) : ToricVarietyClosed T := by
  exact And.intro E.fanCompleteClosed (And.intro E.fanSmoothClosed E.projectiveClosed)

end CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse