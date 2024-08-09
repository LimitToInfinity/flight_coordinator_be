class FlightSerializer
  include FastJsonapi::ObjectSerializer

  attributes(
    :id,
    :direction,
    :datetime,
    :datetime_string,
    :airport,
    :airline,
    :number,
    :traveler_id,
    :traveler
  )

  attribute :ride do |flight|
    ride = Ride.find_by flight: flight
    { id: ride.id, driver: ride.driver, shuttle: ride.shuttle } if ride
  end
end
