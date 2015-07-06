require 'rails_helper'

RSpec.describe "syndromes/new", type: :view do
  before(:each) do
    assign(:syndrome, Syndrome.new(
      :name => "MyString",
      :description => "MyText",
      :position => 1
    ))
  end

  it "renders new syndrome form" do
    render

    assert_select "form[action=?][method=?]", syndromes_path, "post" do

      assert_select "input#syndrome_name[name=?]", "syndrome[name]"

      assert_select "textarea#syndrome_description[name=?]", "syndrome[description]"

      assert_select "input#syndrome_position[name=?]", "syndrome[position]"
    end
  end
end
