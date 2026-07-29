import HautevilleHouse.GlobalBoundaryBehaviorHolomorphicFunctionsCanonicalLaneLean.HardySpaceBoundaryLayer

namespace HautevilleHouse
namespace GlobalBoundaryBehaviorHolomorphicFunctionsCanonicalLaneLean

def ConstrainedBoundaryClosure (A : GlobalBoundaryBehaviorClass) : Prop :=
  boundaryBridgeClosed A ∧ boundaryGateClosed A

theorem constrained_boundary_closure (A : GlobalBoundaryBehaviorClass) :
    ConstrainedBoundaryClosure A := by
  refine And.intro ?_ ?_
  · exact And.intro A.boundaryAdmitted A.holomorphicData.fatouProperty
  · exact A.endpointSatisfied.elim (fun h => Or.inl h) (fun h => Or.inr h)

theorem global_boundary_behavior_endgame (A : GlobalBoundaryBehaviorClass) :
    ConstrainedBoundaryClosure A := by
  exact constrained_boundary_closure A

end GlobalBoundaryBehaviorHolomorphicFunctionsCanonicalLaneLean
end HautevilleHouse