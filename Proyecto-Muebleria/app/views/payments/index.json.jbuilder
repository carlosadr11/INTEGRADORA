json.array!(@payments) do |payment|
  json.extract! payment, :id, :fecha, :abono
  json.url payment_url(payment, format: :json)
end
