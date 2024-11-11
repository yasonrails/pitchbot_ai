RSpec.describe ProposalStrategyService do
  let(:proposal) { Proposal.new(content: "prix et délais") }
  let(:service) { ProposalStrategyService.new(proposal) }

  it "recommande des arguments pertinents" do
    expect(service.analyze).to include("Ajoutez un argument de coût-bénéfice")
  end
end
