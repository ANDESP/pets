json.array!(@services) do |service|
  json.extract! service, :id, :servicio, :costo
  json.url service_url(service, format: :json)
end
