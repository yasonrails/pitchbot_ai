# app/channels/proposals_channel.rb
class ProposalsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "proposal_#{params[:proposal_id]}"
  end
end
