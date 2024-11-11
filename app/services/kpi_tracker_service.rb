# app/services/kpi_tracker_service.rb
class KpiTrackerService
  def initialize(proposal)
    @proposal = proposal
  end

  def track_performance
    # Suivi simplifié de la performance
    engagement = rand(20..100)
    @proposal.kpi_trackers.create!(engagement_score: engagement)
  end
end
