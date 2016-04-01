json.array!(@supplies) do |supply|
  json.extract! supply, :id, :client_id, :residue_id, :supplied_monthly_quantity, :stock, :state
  json.url supply_url(supply, format: :json)
end
