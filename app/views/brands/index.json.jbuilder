json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :logo, :description
  json.url brand_url(brand, format: :json)
end
