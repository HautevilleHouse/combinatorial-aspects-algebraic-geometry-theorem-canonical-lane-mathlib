import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean

structure SheafCohomologyPackage where
  sheafType : Type u
  baseSpace : Type v
  cohomologyGroups : ℕ → Type w
  exactness : Prop
  vanishingTheorem : Prop
  exactnessTerm : exactness
  vanishingTheoremTerm : vanishingTheorem

structure SheafCohomologyEvidence (S : SheafCohomologyPackage) where
  exactnessClosed : S.exactness
  vanishingTheoremClosed : S.vanishingTheorem

def SheafCohomologyClosed (S : SheafCohomologyPackage) : Prop :=
  S.exactness ∧ S.vanishingTheorem

theorem sheaf_cohomology_closed_from_evidence (S : SheafCohomologyPackage) (E : SheafCohomologyEvidence S) :
    SheafCohomologyClosed S := by
  exact And.intro E.exactnessClosed E.vanishingTheoremClosed

end CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse