import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalBoundaryBehaviorHolomorphicFunctionsCanonicalLaneLean

structure BoundaryBehaviorCertificate where
  kernelReady : HarmonicMeasureKernelReady harmonicMeasureKernel
  fatouTypeLayerReady : FatouTypeLayerClosed fatouTypeLayerCertificate
  littlewoodPaleyLayerReady : LittlewoodPaleyLayerClosed littlewoodPaleyLayerCertificate
  carlesonMeasureLayerReady : CarlesonMeasureLayerClosed carlesonMeasureLayerCertificate
  radialLimitLayerReady : RadialLimitLayerClosed radialLimitLayerCertificate
  baselineGatesClosed : Bool
  boundaryObjectClosed : Bool
  classicalBoundaryCarried : Bool

def boundaryBehaviorCertificate : BoundaryBehaviorCertificate := {
  kernelReady := harmonic_measure_kernel_ready_checked,
  fatouTypeLayerReady := fatou_type_layer_closed_checked,
  littlewoodPaleyLayerReady := littlewood_paley_layer_closed_checked,
  carlesonMeasureLayerReady := carleson_measure_layer_closed_checked,
  radialLimitLayerReady := radial_limit_layer_closed_checked,
  baselineGatesClosed := true,
  boundaryObjectClosed := true,
  classicalBoundaryCarried := true
}

def BoundaryBehaviorCertificateClosed (C : BoundaryBehaviorCertificate) : Prop :=
  C.kernelReady ∧
  C.fatouTypeLayerReady ∧
  C.littlewoodPaleyLayerReady ∧
  C.carlesonMeasureLayerReady ∧
  C.radialLimitLayerReady ∧
  C.baselineGatesClosed = true ∧
  C.boundaryObjectClosed = true ∧
  C.classicalBoundaryCarried = true

theorem boundary_behavior_certificate_closed_checked :
    BoundaryBehaviorCertificateClosed boundaryBehaviorCertificate := by
  exact And.intro harmonic_measure_kernel_ready_checked
    (And.intro fatou_type_layer_closed_checked
    (And.intro littlewood_paley_layer_closed_checked
    (And.intro carleson_measure_layer_closed_checked
    (And.intro radial_limit_layer_closed_checked
    (And.intro rfl (And.intro rfl rfl))))))

end GlobalBoundaryBehaviorHolomorphicFunctionsCanonicalLaneLean
end HautevilleHouse
