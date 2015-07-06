json.array!(@faculties) do |faculty|
  json.extract! faculty, :id, :name, :gender, :avatar, :teaching_age, :academic_level, :school, :major, :self_assesment
  json.url faculty_url(faculty, format: :json)
end
