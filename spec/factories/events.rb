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

FactoryGirl.define do
  factory :event do
    agent_id 1
title "MyString"
begin_time "2015-07-06 23:36:12"
end_time "2015-07-06 23:36:12"
short_description "MyText"
description "MyText"
  end

end
