json.array!(@syndromes) do |syndrome|
  json.extract! syndrome, :id, :name, :description, :position
  json.url syndrome_url(syndrome, format: :json)
end
