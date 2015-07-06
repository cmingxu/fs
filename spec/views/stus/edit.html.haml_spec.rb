require 'rails_helper'

RSpec.describe "stus/edit", type: :view do
  before(:each) do
    @stu = assign(:stu, Stu.create!(
      :name => "MyString",
      :address => "MyString",
      :syndrome_id => 1
    ))
  end

  it "renders the edit stu form" do
    render

    assert_select "form[action=?][method=?]", stu_path(@stu), "post" do

      assert_select "input#stu_name[name=?]", "stu[name]"

      assert_select "input#stu_address[name=?]", "stu[address]"

      assert_select "input#stu_syndrome_id[name=?]", "stu[syndrome_id]"
    end
  end
end
