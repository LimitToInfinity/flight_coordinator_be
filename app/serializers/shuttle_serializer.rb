class ShuttleSerializer
  include FastJsonapi::ObjectSerializer

  attributes :id, :datetime, :datetime_string, :rides, :drivers, :travelers

  attribute :drivers do |shuttle|
    shuttle.drivers.uniq
  end
end
