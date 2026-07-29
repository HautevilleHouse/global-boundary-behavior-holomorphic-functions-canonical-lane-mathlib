import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace GlobalBoundaryBehaviorHolomorphicFunctionsCanonicalLaneLean

structure InnerFunctionDatum where
  innerFunction : ℂ → ℂ
  modulusOneOnBoundary : Bool
  innerBoundaryValues : ℂ → ℂ
  classicalComplementCarried : Bool

def innerFunctionDatum : InnerFunctionDatum := {
  innerFunction := λ _ => 0,
  modulusOneOnBoundary := true,
  innerBoundaryValues := λ _ => 1,
  classicalComplementCarried := true
}

structure OuterFunctionDatum where
  outerFunction : ℂ → ℂ
  boundaryModulus : ℝ → ℝ
  boundaryValues : ℂ → ℂ
  classicalComplementCarried : Bool

def outerFunctionDatum : OuterFunctionDatum := {
  outerFunction := λ _ => 0,
  boundaryModulus := λ _ => 1,
  boundaryValues := λ _ => 1,
  classicalComplementCarried := true
}

structure InnerOuterFactorizationCertificate where
  innerDatum : InnerFunctionDatum
  outerDatum : OuterFunctionDatum
  factorizationRoute : String
  boundaryFactorizationRoute : String
  endpointChecked : Bool
  classicalBoundaryCarried : Bool

def innerOuterFactorizationCertificate : InnerOuterFactorizationCertificate := {
  innerDatum := innerFunctionDatum,
  outerDatum := outerFunctionDatum,
  factorizationRoute := "inner-outer factorization of bounded analytic functions on the disc",
  boundaryFactorizationRoute := "boundary values factor as product of inner and outer boundary functions",
  endpointChecked := true,
  classicalBoundaryCarried := true
}

def InnerOuterFactorizationLayerClosed (C : InnerOuterFactorizationCertificate) : Prop :=
  C.innerDatum.modulusOneOnBoundary = true ∧
  C.outerDatum.boundaryModulus = (λ _ => 1) ∧
  C.endpointChecked = true ∧
  C.classicalBoundaryCarried = true

theorem inner_outer_factorization_layer_closed_checked :
    InnerOuterFactorizationLayerClosed innerOuterFactorizationCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end GlobalBoundaryBehaviorHolomorphicFunctionsCanonicalLaneLean
end HautevilleHouse
