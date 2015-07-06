class CreateCourseTaughts < ActiveRecord::Migration
  def change
    create_table :course_taughts do |t|
      t.integer :faculty_id
      t.integer :stu_id
      t.integer :course_id
      t.datetime :begin_time
      t.integer :duration
      t.integer :price
      t.integer :total_price

      t.timestamps null: false
    end
  end
end
