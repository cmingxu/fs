require 'rails_helper'

RSpec.describe "faculties/show", type: :view do
  before(:each) do
    @faculty = assign(:faculty, Faculty.create!(
      :name => "Name",
      :gender => "Gender",
      :avatar => "Avatar",
      :teaching_age => 1,
      :academic_level => "Academic Level",
      :school => "School",
      :major => "Major",
      :self_assesment => "Self Assesment"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Avatar/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Academic Level/)
    expect(rendered).to match(/School/)
    expect(rendered).to match(/Major/)
    expect(rendered).to match(/Self Assesment/)
  end
end
