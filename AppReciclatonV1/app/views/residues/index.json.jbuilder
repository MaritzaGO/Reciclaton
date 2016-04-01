json.array!(@residues) do |residue|
  json.extract! residue, :id, :name_redidue, :category_id, :available_quantity
  json.url residue_url(residue, format: :json)
end
