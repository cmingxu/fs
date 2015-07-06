require 'rails_helper'

RSpec.describe "stus/new", type: :view do
  before(:each) do
    assign(:stu, Stu.new(
      :name => "MyString",
      :address => "MyString",
      :syndrome_id => 1
    ))
  end

  it "renders new stu form" do
    render

    assert_select "form[action=?][method=?]", stus_path, "post" do

      assert_select "input#stu_name[name=?]", "stu[name]"

      assert_select "input#stu_address[name=?]", "stu[address]"

      assert_select "input#stu_syndrome_id[name=?]", "stu[syndrome_id]"
    end
  end
end
