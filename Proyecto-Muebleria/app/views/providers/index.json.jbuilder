json.array!(@providers) do |provider|
  json.extract! provider, :id, :nombre, :apellido, :domiciolio, :telefono, :email, :totalProductos, :fecha, :totalPago
  json.url provider_url(provider, format: :json)
end
