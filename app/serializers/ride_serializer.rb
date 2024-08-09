class RideSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :driver, :traveler, :flight, :shuttle
end
