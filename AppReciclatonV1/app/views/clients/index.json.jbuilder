json.array!(@clients) do |client|
  json.extract! client, :id, :name_complet, :customer_type, :identification_number, :ubication
  json.url client_url(client, format: :json)
end
