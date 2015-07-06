require 'rails_helper'

RSpec.describe "syndromes/show", type: :view do
  before(:each) do
    @syndrome = assign(:syndrome, Syndrome.create!(
      :name => "Name",
      :description => "MyText",
      :position => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
