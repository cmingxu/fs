require 'rails_helper'

RSpec.describe "faculties/edit", type: :view do
  before(:each) do
    @faculty = assign(:faculty, Faculty.create!(
      :name => "MyString",
      :gender => "MyString",
      :avatar => "MyString",
      :teaching_age => 1,
      :academic_level => "MyString",
      :school => "MyString",
      :major => "MyString",
      :self_assesment => "MyString"
    ))
  end

  it "renders the edit faculty form" do
    render

    assert_select "form[action=?][method=?]", faculty_path(@faculty), "post" do

      assert_select "input#faculty_name[name=?]", "faculty[name]"

      assert_select "input#faculty_gender[name=?]", "faculty[gender]"

      assert_select "input#faculty_avatar[name=?]", "faculty[avatar]"

      assert_select "input#faculty_teaching_age[name=?]", "faculty[teaching_age]"

      assert_select "input#faculty_academic_level[name=?]", "faculty[academic_level]"

      assert_select "input#faculty_school[name=?]", "faculty[school]"

      assert_select "input#faculty_major[name=?]", "faculty[major]"

      assert_select "input#faculty_self_assesment[name=?]", "faculty[self_assesment]"
    end
  end
end
