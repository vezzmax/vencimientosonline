class CreateSupervisions < ActiveRecord::Migration
  def change
    create_table :supervisions do |t|
      t.integer :user_id
      t.integer :associated_tax_id
      t.integer :level

      t.timestamps
    end
    add_index :supervisions, :user_id
    add_index :supervisions, :associated_tax_id
    add_index :supervisions, [:user_id, :associated_tax_id, :level], unique: true

  end
end
