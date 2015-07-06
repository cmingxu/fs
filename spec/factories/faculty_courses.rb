# == Schema Information
#
# Table name: faculty_courses
#
#  id         :integer          not null, primary key
#  faculty_id :integer
#  course_id  :integer
#  price      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :faculty_course do
    faculty_id 1
course_id 1
price 1
  end

end
