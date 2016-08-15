json.array!(@info_sales) do |info_sale|
  json.extract! info_sale, :id, :sale_id, :product_id, :cantidad, :precio
  json.url info_sale_url(info_sale, format: :json)
end
