import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean

structure ModuliSpacePackage where
  curveFamily : Type u
  baseSpace : Type v
  universalFamily : Prop
  coarseModuli : Prop
  fineModuli : Prop
  universalFamilyTerm : universalFamily
  coarseModuliTerm : coarseModuli
  fineModuliTerm : fineModuli

structure ModuliSpaceEvidence (M : ModuliSpacePackage) where
  universalFamilyClosed : M.universalFamily
  coarseModuliClosed : M.coarseModuli
  fineModuliClosed : M.fineModuli

def ModuliSpaceClosed (M : ModuliSpacePackage) : Prop :=
  M.universalFamily ∧ M.coarseModuli ∧ M.fineModuli

theorem moduli_space_closed_from_evidence (M : ModuliSpacePackage) (E : ModuliSpaceEvidence M) :
    ModuliSpaceClosed M := by
  exact And.intro E.universalFamilyClosed (And.intro E.coarseModuliClosed E.fineModuliClosed)

end CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse