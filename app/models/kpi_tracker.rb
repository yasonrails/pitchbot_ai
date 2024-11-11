class KpiTracker < ApplicationRecord
  belongs_to :proposal
  validates :performance_score, numericality: true
end