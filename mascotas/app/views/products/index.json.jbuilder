json.array!(@products) do |product|
  json.extract! product, :id, :producto, :costo, :client_id
  json.url product_url(product, format: :json)
end
