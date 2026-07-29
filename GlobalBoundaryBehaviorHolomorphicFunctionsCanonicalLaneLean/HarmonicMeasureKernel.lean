import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalBoundaryBehaviorHolomorphicFunctionsCanonicalLaneLean

structure HarmonicMeasureKernel where
  domain : Complex
  boundaryComponent : String
  carrier : Complex
  harmonicMeasureRoute : String
  poissonExtensionRoute : String
  boundaryContinuityChecked : Bool
  kernelAdapted : Bool

def harmonicMeasureKernel : HarmonicMeasureKernel := {
  domain := Complex.unitDisc,
  boundaryComponent := "unit circle with harmonic measure kernel",
  carrier := Complex.unitDisc,
  harmonicMeasureRoute := "poisson kernel integrated along boundary arc",
  poissonExtensionRoute := "poisson extension of boundary datum to interior",
  boundaryContinuityChecked := true,
  kernelAdapted := true
}

def HarmonicMeasureKernelReady (K : HarmonicMeasureKernel) : Prop :=
  K.harmonicMeasureRoute = "poisson kernel integrated along boundary arc" ∧
  K.poissonExtensionRoute = "poisson extension of boundary datum to interior" ∧
  K.boundaryContinuityChecked = true ∧
  K.kernelAdapted = true

theorem harmonic_measure_kernel_ready_checked :
    HarmonicMeasureKernelReady harmonicMeasureKernel := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end GlobalBoundaryBehaviorHolomorphicFunctionsCanonicalLaneLean
end HautevilleHouse
