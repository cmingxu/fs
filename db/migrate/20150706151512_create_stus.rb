class CreateStus < ActiveRecord::Migration
  def change
    create_table :stus do |t|
      t.string :name
      t.string :address
      t.integer :syndrome_id

      t.timestamps null: false
    end
  end
end
