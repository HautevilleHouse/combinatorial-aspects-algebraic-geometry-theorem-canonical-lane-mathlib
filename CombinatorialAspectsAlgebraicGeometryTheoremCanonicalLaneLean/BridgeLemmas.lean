import CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AlgebraicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse