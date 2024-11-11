# app/services/legal_check_service.rb
class LegalCheckService
  def initialize(proposal)
    @proposal = proposal
  end

  def analyze
    risks = []
    risks << "Clause vague détectée" if @proposal.content.include?("si possible")
    risks
  end
end
