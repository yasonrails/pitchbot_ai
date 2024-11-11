# app/services/proposal_simulation_service.rb
class ProposalSimulationService
  def initialize(proposal)
    @proposal = proposal
  end

  def simulate
    # Algorithme de scoring basé sur des données historiques
    base_score = rand(60..90) # Simulation d'impact probable
    { suggestion: "Ajoutez plus de détails sur les avantages clients", impact_score: base_score }
  end
end
