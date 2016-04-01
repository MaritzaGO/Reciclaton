json.array!(@demands) do |demand|
  json.extract! demand, :id, :client_id, :residue_id, :demanded_monthly_quantity, :state
  json.url demand_url(demand, format: :json)
end
