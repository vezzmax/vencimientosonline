class CreateExpirations < ActiveRecord::Migration
  def change
    create_table :expirations do |t|
      t.date :date
      t.integer :endingFirst
      t.integer :endingLast
      t.integer :tax_id

      t.timestamps
    end
  end
end
