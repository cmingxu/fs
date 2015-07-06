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

require 'rails_helper'

RSpec.describe Agent, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
