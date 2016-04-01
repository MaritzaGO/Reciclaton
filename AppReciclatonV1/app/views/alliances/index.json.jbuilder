json.array!(@alliances) do |alliance|
  json.extract! alliance, :id, :client_supplier_id, :client_recipient_id, :supply_id, :demand_id, :agreed_quantity
  json.url alliance_url(alliance, format: :json)
end
