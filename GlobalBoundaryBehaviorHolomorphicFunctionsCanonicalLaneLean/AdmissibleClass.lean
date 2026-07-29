import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalBoundaryBehaviorHolomorphicFunctionsCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GlobalBoundaryBehaviorHolomorphicFunctionsCanonicalLaneLean
end HautevilleHouse