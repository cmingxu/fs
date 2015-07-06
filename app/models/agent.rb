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

class Agent < ActiveRecord::Base
end
