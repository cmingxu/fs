# == Schema Information
#
# Table name: agents
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  contact_name    :string(255)
#  contact_email   :string(255)
#  contact_phone   :string(255)
#  contact_address :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :agent do
    name "MyString"
contact_name "MyString"
contact_email "MyString"
contact_phone "MyString"
contact_address "MyString"
  end

end
