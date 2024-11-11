# app/services/proposal_strategy_service.rb
class ProposalStrategyService
  def initialize(proposal)
    @proposal = proposal
  end

  def analyze
    # Exemple d'analyse de contenu et de suggestions
    suggestions = []
    suggestions << "Ajoutez un argument de coût-bénéfice" if @proposal.content.include?("prix")
    suggestions << "Mettez en avant la rapidité d'exécution" unless @proposal.content.include?("rapidité")

    # Retourne des suggestions en fonction du contenu
    suggestions
  end
end
