json.array!(@zones) do |zone|
  json.extract! zone, :id, :name, :position
  json.url zone_url(zone, format: :json)
end
