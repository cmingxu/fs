class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.string :name
      t.integer :position

      t.timestamps null: false
    end
  end
end
