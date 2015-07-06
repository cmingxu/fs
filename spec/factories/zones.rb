# == Schema Information
#
# Table name: zones
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  position   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :zone do
    name "MyString"
position 1
  end

end
