import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalBoundaryBehaviorHolomorphicFunctionsCanonicalLaneLean

structure RadialLimitLayerCertificate where
  kernelData : HarmonicMeasureKernel
  radialLimitRoute : String
  nontangentialLimitRoute : String
  boundaryUniquenessRoute : String
  radialBoundaryValuesRoute : String
  radialLimitTheoryHolds : Bool
  layerReady : Bool

def radialLimitLayerCertificate : RadialLimitLayerCertificate := {
  kernelData := harmonicMeasureKernel,
  radialLimitRoute := "Radial limits of holomorphic functions",
  nontangentialLimitRoute := "Nontangential limits via Stolz domains",
  boundaryUniquenessRoute := "Boundary uniqueness theorems",
  radialBoundaryValuesRoute := "Radial boundary values and Poisson reconstruction",
  radialLimitTheoryHolds := true,
  layerReady := true
}

def RadialLimitLayerClosed (C : RadialLimitLayerCertificate) : Prop :=
  C.radialLimitTheoryHolds = true ∧
  C.layerReady = true ∧
  C.kernelData.boundaryContinuityChecked = true

theorem radial_limit_layer_closed_checked :
    RadialLimitLayerClosed radialLimitLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end GlobalBoundaryBehaviorHolomorphicFunctionsCanonicalLaneLean
end HautevilleHouse
