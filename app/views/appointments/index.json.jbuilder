json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :name, :phone, :email, :numpeople, :date, :timeslot, :user_id
  json.url appointment_url(appointment, format: :json)
end
