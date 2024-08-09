class Shuttle < ApplicationRecord
  has_many :trips, class_name: 'Ride'
  has_many :rides

  has_many :travelers, through: :trips, source: :traveler
  has_many :drivers, through: :rides, source: :driver
end
