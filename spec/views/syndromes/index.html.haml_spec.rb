require 'rails_helper'

RSpec.describe "syndromes/index", type: :view do
  before(:each) do
    assign(:syndromes, [
      Syndrome.create!(
        :name => "Name",
        :description => "MyText",
        :position => 1
      ),
      Syndrome.create!(
        :name => "Name",
        :description => "MyText",
        :position => 1
      )
    ])
  end

  it "renders a list of syndromes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
