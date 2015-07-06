# == Schema Information
#
# Table name: stus
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  address     :string(255)
#  syndrome_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Stu < ActiveRecord::Base
  has_one :syndrome
  has_many :faculty_courses, :dependent => :destroy
  has_many :faculties

end
