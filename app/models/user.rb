class User < ApplicationRecord
  has_many :itineraries
  has_many :locations, through: :itineraries
end
