import CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AlgebraicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure AlgebraicAdmittedObject where
  space : AlgebraicSpace
  isProjectiveVariety : Prop
  isSmooth : Prop
  hasRationalCohomology : Prop
  combinatorialModel : Type
  combinatorialTopology : TopologicalSpace combinatorialModel
  combinatorialEquivalence : Prop
  conclusion : combinatorialEquivalence

structure AlgebraicEndgameState where
  object : AlgebraicAdmittedObject

def AlgebraicWitnessClosed (O : AlgebraicAdmittedObject) : Prop :=
  O.combinatorialEquivalence

end CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse