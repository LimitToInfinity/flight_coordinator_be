class PersonSerializer
  include FastJsonapi::ObjectSerializer
  # set_key_transform :camel_lower

  attributes(
    :id,
    :name,
    :image,
    :flights,
    :drivers,
    :rides,
    :shuttles,
    :travelers,
    :trips,
    :groups,
    :created_at,
    :updated_at
  )

  attribute :groups do |person|
    person.groups.uniq
  end
end
