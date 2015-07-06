require 'rails_helper'

RSpec.describe "zones/index", type: :view do
  before(:each) do
    assign(:zones, [
      Zone.create!(
        :name => "Name",
        :position => 1
      ),
      Zone.create!(
        :name => "Name",
        :position => 1
      )
    ])
  end

  it "renders a list of zones" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
