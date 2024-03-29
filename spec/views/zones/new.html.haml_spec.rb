require 'rails_helper'

RSpec.describe "zones/new", type: :view do
  before(:each) do
    assign(:zone, Zone.new(
      :name => "MyString",
      :position => 1
    ))
  end

  it "renders new zone form" do
    render

    assert_select "form[action=?][method=?]", zones_path, "post" do

      assert_select "input#zone_name[name=?]", "zone[name]"

      assert_select "input#zone_position[name=?]", "zone[position]"
    end
  end
end
