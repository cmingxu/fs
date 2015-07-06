# == Schema Information
#
# Table name: faculties
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  gender         :string(255)
#  avatar         :string(255)
#  teaching_age   :integer
#  academic_level :string(255)
#  school         :string(255)
#  major          :string(255)
#  self_assesment :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryGirl.define do
  factory :faculty do
    name "MyString"
gender "MyString"
avatar "MyString"
teaching_age 1
academic_level "MyString"
school "MyString"
major "MyString"
self_assesment "MyString"
  end

end
