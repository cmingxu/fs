# == Schema Information
#
# Table name: syndromes
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text(65535)
#  position    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Syndrome, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
