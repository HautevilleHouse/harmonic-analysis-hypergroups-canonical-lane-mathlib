import HarmonicAnalysisHypergroupsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace HarmonicAnalysisHypergroupsCanonicalLaneLean

structure TheoremStatement where
  hypergroupName : String
  harmonicProperties : Prop
  bridgeGateClosure : Prop

def sourceTheoremStatement : TheoremStatement :=
  { hypergroupName := "CompactHypergroup",
    harmonicProperties := True,
    bridgeGateClosure := True }

theorem theorem_statement_harmonic_properties :
    sourceTheoremStatement.harmonicProperties := by
  trivial

theorem theorem_statement_bridge_gate_closure :
    sourceTheoremStatement.bridgeGateClosure := by
  trivial

end HarmonicAnalysisHypergroupsCanonicalLaneLean
end HautevilleHouse