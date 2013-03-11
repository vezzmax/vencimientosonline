class CreateExpirations < ActiveRecord::Migration
  def change
    create_table :expirations do |t|
      t.date :date
      t.integer :ending_first
      t.integer :ending_last
      t.integer :tax_id

      t.timestamps
    end
  end
end
