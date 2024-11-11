class Proposal < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :kpi_trackers
  validates :title, :content, presence: true
end
