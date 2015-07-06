json.array!(@stus) do |stu|
  json.extract! stu, :id, :name, :address, :syndrome_id
  json.url stu_url(stu, format: :json)
end
