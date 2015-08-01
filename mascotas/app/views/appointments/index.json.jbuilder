json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :fecha, :client_id
  json.url appointment_url(appointment, format: :json)
end
