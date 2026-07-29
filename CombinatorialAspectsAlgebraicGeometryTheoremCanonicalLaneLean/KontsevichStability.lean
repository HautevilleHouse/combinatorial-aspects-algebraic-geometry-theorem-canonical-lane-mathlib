import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean

structure KontsevichStabilityPackage where
  derivedCategory : Type u
  heartAbelian : Type v
  tiltTorsionPair : (T, F) where T, F : Subcategory
  wallAndChamber : Set Wall
  stabilityFunction : Heart → ℤ
  moduliStack : Prop
  wallCrossingFormula : Prop

structure KontsevichStabilityEvidence (K : KontsevichStabilityPackage) where
  tiltTorsionPairClosed : K.tiltTorsionPair.2
  moduliStackClosed : K.moduliStack
  wallCrossingFormulaClosed : K.wallCrossingFormula

def KontsevichStabilityClosed (K : KontsevichStabilityPackage) : Prop :=
  K.moduliStack ∧ K.wallCrossingFormula

theorem kontsevich_stability_closed_from_evidence (K : KontsevichStabilityPackage)
    (E : KontsevichStabilityEvidence K) : KontsevichStabilityClosed K := by
  exact And.intro E.moduliStackClosed E.wallCrossingFormulaClosed

end CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse