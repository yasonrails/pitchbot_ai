# app/controllers/proposals_controller.rb
class ProposalsController < ApplicationController
  def show
    @proposal = Proposal.find(params[:id])
    @suggestions = ProposalStrategyService.new(@proposal).analyze
  end
end
