class CreateSyndromes < ActiveRecord::Migration
  def change
    create_table :syndromes do |t|
      t.string :name
      t.text :description
      t.integer :position

      t.timestamps null: false
    end
  end
end
