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

class FacultyCourse < ActiveRecord::Base
end
