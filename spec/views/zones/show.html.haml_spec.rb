require 'rails_helper'

RSpec.describe "zones/show", type: :view do
  before(:each) do
    @zone = assign(:zone, Zone.create!(
      :name => "Name",
      :position => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
