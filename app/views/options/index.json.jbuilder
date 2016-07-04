json.array!(@options) do |option|
  json.extract! option, :id, :pricePerPerson, :discount, :appointment_id
  json.url option_url(option, format: :json)
end
