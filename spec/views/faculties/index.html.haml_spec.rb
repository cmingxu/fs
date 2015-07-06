require 'rails_helper'

RSpec.describe "faculties/index", type: :view do
  before(:each) do
    assign(:faculties, [
      Faculty.create!(
        :name => "Name",
        :gender => "Gender",
        :avatar => "Avatar",
        :teaching_age => 1,
        :academic_level => "Academic Level",
        :school => "School",
        :major => "Major",
        :self_assesment => "Self Assesment"
      ),
      Faculty.create!(
        :name => "Name",
        :gender => "Gender",
        :avatar => "Avatar",
        :teaching_age => 1,
        :academic_level => "Academic Level",
        :school => "School",
        :major => "Major",
        :self_assesment => "Self Assesment"
      )
    ])
  end

  it "renders a list of faculties" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "Avatar".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Academic Level".to_s, :count => 2
    assert_select "tr>td", :text => "School".to_s, :count => 2
    assert_select "tr>td", :text => "Major".to_s, :count => 2
    assert_select "tr>td", :text => "Self Assesment".to_s, :count => 2
  end
end
