json.array!(@sales) do |sale|
  json.extract! sale, :id, :fecha, :totalPago, :client_id
  json.url sale_url(sale, format: :json)
end
