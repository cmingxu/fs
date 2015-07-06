# == Schema Information
#
# Table name: events
#
#  id                :integer          not null, primary key
#  agent_id          :integer
#  title             :string(255)
#  begin_time        :datetime
#  end_time          :datetime
#  short_description :text(65535)
#  description       :text(65535)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'rails_helper'

RSpec.describe Event, type: :model do
  it { should belongs_to(:agent) }
end
