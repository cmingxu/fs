require 'rails_helper'

RSpec.describe "agents/index", type: :view do
  before(:each) do
    assign(:agents, [
      Agent.create!(
        :name => "Name",
        :contact_name => "Contact Name",
        :contact_email => "Contact Email",
        :contact_phone => "Contact Phone",
        :contact_address => "Contact Address"
      ),
      Agent.create!(
        :name => "Name",
        :contact_name => "Contact Name",
        :contact_email => "Contact Email",
        :contact_phone => "Contact Phone",
        :contact_address => "Contact Address"
      )
    ])
  end

  it "renders a list of agents" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Email".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Address".to_s, :count => 2
  end
end
