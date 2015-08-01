json.array!(@services) do |service|
  json.extract! service, :id, :servicio, :costo, :pacient_id
  json.url service_url(service, format: :json)
end
