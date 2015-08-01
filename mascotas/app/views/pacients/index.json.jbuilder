json.array!(@pacients) do |pacient|
  json.extract! pacient, :id, :mascota, :client_id
  json.url pacient_url(pacient, format: :json)
end
