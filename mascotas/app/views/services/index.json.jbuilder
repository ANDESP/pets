json.array!(@services) do |service|
  json.extract! service, :id, :servicio, :costo, :client_id
  json.url service_url(service, format: :json)
end
