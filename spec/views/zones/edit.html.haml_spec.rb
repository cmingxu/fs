require 'rails_helper'

RSpec.describe "zones/edit", type: :view do
  before(:each) do
    @zone = assign(:zone, Zone.create!(
      :name => "MyString",
      :position => 1
    ))
  end

  it "renders the edit zone form" do
    render

    assert_select "form[action=?][method=?]", zone_path(@zone), "post" do

      assert_select "input#zone_name[name=?]", "zone[name]"

      assert_select "input#zone_position[name=?]", "zone[position]"
    end
  end
end
