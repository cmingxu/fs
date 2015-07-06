require 'rails_helper'

RSpec.describe "syndromes/edit", type: :view do
  before(:each) do
    @syndrome = assign(:syndrome, Syndrome.create!(
      :name => "MyString",
      :description => "MyText",
      :position => 1
    ))
  end

  it "renders the edit syndrome form" do
    render

    assert_select "form[action=?][method=?]", syndrome_path(@syndrome), "post" do

      assert_select "input#syndrome_name[name=?]", "syndrome[name]"

      assert_select "textarea#syndrome_description[name=?]", "syndrome[description]"

      assert_select "input#syndrome_position[name=?]", "syndrome[position]"
    end
  end
end
