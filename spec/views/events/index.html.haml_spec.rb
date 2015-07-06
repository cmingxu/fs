require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :agent_id => 1,
        :title => "Title",
        :short_description => "MyText",
        :description => "MyText"
      ),
      Event.create!(
        :agent_id => 1,
        :title => "Title",
        :short_description => "MyText",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
