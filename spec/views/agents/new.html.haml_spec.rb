require 'rails_helper'

RSpec.describe "agents/new", type: :view do
  before(:each) do
    assign(:agent, Agent.new(
      :name => "MyString",
      :contact_name => "MyString",
      :contact_email => "MyString",
      :contact_phone => "MyString",
      :contact_address => "MyString"
    ))
  end

  it "renders new agent form" do
    render

    assert_select "form[action=?][method=?]", agents_path, "post" do

      assert_select "input#agent_name[name=?]", "agent[name]"

      assert_select "input#agent_contact_name[name=?]", "agent[contact_name]"

      assert_select "input#agent_contact_email[name=?]", "agent[contact_email]"

      assert_select "input#agent_contact_phone[name=?]", "agent[contact_phone]"

      assert_select "input#agent_contact_address[name=?]", "agent[contact_address]"
    end
  end
end
