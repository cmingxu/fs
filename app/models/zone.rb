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

class Zone < ActiveRecord::Base
end
