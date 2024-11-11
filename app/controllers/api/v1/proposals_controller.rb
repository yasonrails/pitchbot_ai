class Api::V1::ProposalsController < ApplicationController
  before_action :set_user

  def index
    render json: @user.proposals
  end

  def create
    # Exemple d'appel pour générer un contenu de proposition
    content = generate_proposal_content(params[:title])
    proposal = @user.proposals.new(title: params[:title], content: content, status: 'draft')
    
    if proposal.save
      render json: proposal, status: :created
    else
      render json: { errors: proposal.errors }, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def generate_proposal_content(title)
    # Simuler l'appel de l'API de Llama pour la génération de contenu
    # Exemple avec une API externe hypothétique
    response = HTTParty.post("https://llama_api.com/generate", {
      body: { prompt: "Generate a proposal about #{title}" }.to_json,
      headers: { 'Content-Type' => 'application/json' }
    })
    response.parsed_response['text']
  end
end


