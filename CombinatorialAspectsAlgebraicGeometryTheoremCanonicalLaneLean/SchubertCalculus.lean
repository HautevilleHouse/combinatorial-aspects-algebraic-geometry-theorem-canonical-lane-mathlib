import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean

structure SchubertCalculusPackage where
  grassmannian : Type u
  schubertCycle : Type v
  intersectionProduct : Prop
  pieriRule : Prop
  giambelliFormula : Prop

structure SchubertCalculusEvidence (S : SchubertCalculusPackage) where
  intersectionProductClosed : S.intersectionProduct
  pieriRuleClosed : S.pieriRule
  giambelliFormulaClosed : S.giambelliFormula

def SchubertCalculusClosed (S : SchubertCalculusPackage) : Prop :=
  S.intersectionProduct ∧ S.pieriRule ∧ S.giambelliFormula

theorem schubert_calculus_closed_from_evidence (S : SchubertCalculusPackage) (E : SchubertCalculusEvidence S) : SchubertCalculusClosed S := by
  exact And.intro E.intersectionProductClosed (And.intro E.pieriRuleClosed E.giambelliFormulaClosed)

end CombinatorialAspectsAlgebraicGeometryTheoremCanonicalLaneLean
end HautevilleHouse