json.array!(@clients) do |client|
  json.extract! client, :id, :dni, :nombre
  json.url client_url(client, format: :json)
end
