class User < ApplicationRecord
  has_many :proposals
  has_many :comments
  validates :email, presence: true, uniqueness: true
end
