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

require 'rails_helper'

RSpec.describe FacultyCourse, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
