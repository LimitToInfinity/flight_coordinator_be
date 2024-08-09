class Flight < ApplicationRecord
  belongs_to :traveler, class_name: 'Person', foreign_key: :traveler_id

  validates :direction, :datetime, :airport, :airline, :number, presence: true
end
