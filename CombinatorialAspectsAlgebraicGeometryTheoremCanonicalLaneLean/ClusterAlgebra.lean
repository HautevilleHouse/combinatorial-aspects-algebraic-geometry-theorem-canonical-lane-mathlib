import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean

structure ClusterAlgebraPackage where
  seed : Type u
  mutation : Type v
  clusterVariable : Type w
  laurentPhenomenon : Prop
  finiteMutationType : Prop
  positivityConjecture : Prop

structure ClusterAlgebraEvidence (C : ClusterAlgebraPackage) where
  laurentPhenomenonClosed : C.laurentPhenomenon
  finiteMutationTypeClosed : C.finiteMutationType
  positivityConjectureClosed : C.positivityConjecture

def ClusterAlgebraClosed (C : ClusterAlgebraPackage) : Prop :=
  C.laurentPhenomenon ∧ C.finiteMutationType ∧ C.positivityConjecture

theorem cluster_algebra_closed_from_evidence (C : ClusterAlgebraPackage) (E : ClusterAlgebraEvidence C) : ClusterAlgebraClosed C := by
  exact And.intro E.laurentPhenomenonClosed (And.intro E.finiteMutationTypeClosed E.positivityConjectureClosed)

end CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse