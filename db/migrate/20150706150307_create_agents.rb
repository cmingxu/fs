class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.string :contact_address

      t.timestamps null: false
    end
  end
end
