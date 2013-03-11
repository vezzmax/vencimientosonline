class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :accounting_entity_id
      t.integer :role_id

      t.timestamps
    end
  end
end
