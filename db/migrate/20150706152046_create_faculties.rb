class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
      t.string :name
      t.string :gender
      t.string :avatar
      t.integer :teaching_age
      t.string :academic_level
      t.string :school
      t.string :major
      t.string :self_assesment

      t.timestamps null: false
    end
  end
end
