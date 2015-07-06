require 'rails_helper'

RSpec.describe "agents/show", type: :view do
  before(:each) do
    @agent = assign(:agent, Agent.create!(
      :name => "Name",
      :contact_name => "Contact Name",
      :contact_email => "Contact Email",
      :contact_phone => "Contact Phone",
      :contact_address => "Contact Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/Contact Email/)
    expect(rendered).to match(/Contact Phone/)
    expect(rendered).to match(/Contact Address/)
  end
end
