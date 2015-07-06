require 'rails_helper'

RSpec.describe "stus/show", type: :view do
  before(:each) do
    @stu = assign(:stu, Stu.create!(
      :name => "Name",
      :address => "Address",
      :syndrome_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/1/)
  end
end
