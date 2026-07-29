import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean

structure CohomologyRingPackage where
  spaceType : Type u
  coefficientRing : Type v
  cupProduct : Type w
  poincareDuality : Prop
  finiteGeneration : Prop
  poincareDualityTerm : poincareDuality
  finiteGenerationTerm : finiteGeneration

structure CohomologyRingEvidence (H : CohomologyRingPackage) where
  poincareDualityClosed : H.poincareDuality
  finiteGenerationClosed : H.finiteGeneration

def CohomologyRingClosed (H : CohomologyRingPackage) : Prop :=
  H.poincareDuality ∧ H.finiteGeneration

theorem cohomology_ring_closed_from_evidence (H : CohomologyRingPackage) (E : CohomologyRingEvidence H) :
    CohomologyRingClosed H := by
  exact And.intro E.poincareDualityClosed E.finiteGenerationClosed

end CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse