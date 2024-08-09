class Person < ApplicationRecord
  has_many :flights, foreign_key: :traveler_id

  has_many :trips, foreign_key: :driver_id, class_name: 'Ride'
  has_many :travelers, through: :trips, source: :traveler, dependent: :destroy
  has_many :groups, through: :trips, foreign_key: :driver_id, source: :shuttle
  
  has_many :rides, foreign_key: :traveler_id, class_name: 'Ride'
  has_many :drivers, through: :rides, source: :driver, dependent: :destroy
  has_many :shuttles, through: :rides, foreign_key: :traveler_id
end
