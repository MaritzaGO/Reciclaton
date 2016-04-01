json.array!(@categories) do |category|
  json.extract! category, :id, :recycling_line, :environmental_impact
  json.url category_url(category, format: :json)
end
