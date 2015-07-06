require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :agent_id => 1,
      :title => "MyString",
      :short_description => "MyText",
      :description => "MyText"
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_agent_id[name=?]", "event[agent_id]"

      assert_select "input#event_title[name=?]", "event[title]"

      assert_select "textarea#event_short_description[name=?]", "event[short_description]"

      assert_select "textarea#event_description[name=?]", "event[description]"
    end
  end
end
