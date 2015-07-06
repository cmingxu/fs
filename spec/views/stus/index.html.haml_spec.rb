require 'rails_helper'

RSpec.describe "stus/index", type: :view do
  before(:each) do
    assign(:stus, [
      Stu.create!(
        :name => "Name",
        :address => "Address",
        :syndrome_id => 1
      ),
      Stu.create!(
        :name => "Name",
        :address => "Address",
        :syndrome_id => 1
      )
    ])
  end

  it "renders a list of stus" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
