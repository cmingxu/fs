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

class Syndrome < ActiveRecord::Base
end
