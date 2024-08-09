class Ride < ApplicationRecord
  belongs_to :driver, class_name: 'Person'
  belongs_to :traveler, class_name: 'Person'
  belongs_to :flight
  belongs_to :shuttle

  accepts_nested_attributes_for :shuttle

  # validates :traveler_id, is_not: :driver_id

  validate :traveler_cannot_be_driver

  def traveler_cannot_be_driver
    errors.add(:traveler, 'cannot be driver') if traveler_id == driver_id
  end
end
