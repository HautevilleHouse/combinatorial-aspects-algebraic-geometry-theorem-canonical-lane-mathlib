import CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean.MathlibObjects

/-!
# Universal Property Package
-/

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean

structure UniversalPropertyPackage (O : CombinatorialAdmittedObject) where
  initialObject : Type u
  terminalObject : Type v
  uniqueMorphism : Prop
  universalMapping : Prop
  representationCompatibility : Prop

structure UniversalPropertyEvidence {O : CombinatorialAdmittedObject} (U : UniversalPropertyPackage O) where
  uniqueMorphismClosed : U.uniqueMorphism
  universalMappingClosed : U.universalMapping
  representationCompatibilityClosed : U.representationCompatibility

def UniversalPropertyClosed {O : CombinatorialAdmittedObject} (U : UniversalPropertyPackage O) : Prop :=
  U.uniqueMorphism ∧ U.universalMapping ∧ U.representationCompatibility

theorem universal_property_closed_from_evidence
    {O : CombinatorialAdmittedObject} (U : UniversalPropertyPackage O)
    (E : UniversalPropertyEvidence U) : UniversalPropertyClosed U := by
  exact And.intro E.uniqueMorphismClosed
    (And.intro E.universalMappingClosed E.representationCompatibilityClosed)

end CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse