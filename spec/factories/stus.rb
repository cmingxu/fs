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

FactoryGirl.define do
  factory :stu do
    name "MyString"
address "MyString"
syndrome_id 1
  end

end
