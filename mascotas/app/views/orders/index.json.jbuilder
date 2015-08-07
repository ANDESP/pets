json.array!(@orders) do |order|
  json.extract! order, :id, :fecha, :client_id, :product_id, :service_id
  json.url order_url(order, format: :json)
end
