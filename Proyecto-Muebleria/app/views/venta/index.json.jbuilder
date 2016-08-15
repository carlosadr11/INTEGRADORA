json.array!(@venta) do |ventum|
  json.extract! ventum, :id, :fecha, :total_pago
  json.url ventum_url(ventum, format: :json)
end
