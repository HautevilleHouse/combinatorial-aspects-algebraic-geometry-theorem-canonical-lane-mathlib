import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean

structure HilbertSchemePackage where
  hilbertScheme : Type u
  punctualHilbertScheme : Type v
  smoothness : Prop
  irreducibility : Prop
  dimensionFormula : Prop

structure HilbertSchemeEvidence (H : HilbertSchemePackage) where
  smoothnessClosed : H.smoothness
  irreducibilityClosed : H.irreducibility
  dimensionFormulaClosed : H.dimensionFormula

def HilbertSchemeClosed (H : HilbertSchemePackage) : Prop :=
  H.smoothness ∧ H.irreducibility ∧ H.dimensionFormula

theorem hilbert_scheme_closed_from_evidence (H : HilbertSchemePackage) (E : HilbertSchemeEvidence H) : HilbertSchemeClosed H := by
  exact And.intro E.smoothnessClosed (And.intro E.irreducibilityClosed E.dimensionFormulaClosed)

end CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse