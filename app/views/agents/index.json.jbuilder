json.array!(@agents) do |agent|
  json.extract! agent, :id, :name, :contact_name, :contact_email, :contact_phone, :contact_address
  json.url agent_url(agent, format: :json)
end
