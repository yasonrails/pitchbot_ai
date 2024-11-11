# app/services/benchmark_service.rb
class BenchmarkService
  def initialize(proposal)
    @proposal = proposal
  end

  def generate_benchmark
    # Appel à un service ou comparaison interne (simplifié ici)
    avg_price = Proposal.average(:price) || 0
    comparison = @proposal.price > avg_price ? "au-dessus" : "en dessous"
    
    "Le prix proposé est #{comparison} de la moyenne du marché"
  end
end
