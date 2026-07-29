import canonicalLaneMathlib.BlowupAlgebras

/-!
# Resolution Scheme Package
-/

namespace HautevilleHouse
namespace CombinatorialAspectsAlgebraicGeometryTheorem

structure ResolutionSchemePackage where
  baseScheme : Type
  singularLocus : Type
  blowupCenters : List Type
  exceptionalDivisors : List Type
  embeddedResolution : Prop
  weakFactorization : Prop

structure ResolutionSchemeEvidence (R : ResolutionSchemePackage) where
  embeddedResolutionClosed : R.embeddedResolution
  weakFactorizationClosed : R.weakFactorization

def ResolutionSchemeClosed (R : ResolutionSchemePackage) : Prop :=
  R.embeddedResolution ∧ R.weakFactorization

theorem resolution_scheme_closed_from_evidence (R : ResolutionSchemePackage)
    (E : ResolutionSchemeEvidence R) : ResolutionSchemeClosed R := by
  exact And.intro E.embeddedResolutionClosed E.weakFactorizationClosed

end CombinatorialAspectsAlgebraicGeometryTheorem
end HautevilleHouse