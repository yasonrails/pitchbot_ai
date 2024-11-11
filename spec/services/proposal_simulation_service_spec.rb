# spec/services/proposal_simulation_service_spec.rb
RSpec.describe ProposalSimulationService do
  let(:proposal) { Proposal.create(title: "Test Proposal", content: "Content") }

  it "renvoie un score d'impact" do
    service = ProposalSimulationService.new(proposal)
    result = service.simulate
    expect(result[:impact_score]).to be_between(60, 90)
  end
end
