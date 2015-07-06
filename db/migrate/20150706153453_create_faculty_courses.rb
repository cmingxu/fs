class CreateFacultyCourses < ActiveRecord::Migration
  def change
    create_table :faculty_courses do |t|
      t.integer :faculty_id
      t.integer :course_id
      t.integer :price

      t.timestamps null: false
    end
  end
end
