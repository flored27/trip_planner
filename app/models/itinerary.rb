class Itinerary < ApplicationRecord
  belongs_to :user
  has_many :stops
  has_many :locations, through: :stops

end
