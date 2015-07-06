json.array!(@events) do |event|
  json.extract! event, :id, :agent_id, :title, :begin_time, :end_time, :short_description, :description
  json.url event_url(event, format: :json)
end
