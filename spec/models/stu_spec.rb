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

require 'rails_helper'

RSpec.describe Stu, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
