class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :agent_id
      t.string :title
      t.datetime :begin_time
      t.datetime :end_time
      t.text :short_description
      t.text :description

      t.timestamps null: false
    end
  end
end
