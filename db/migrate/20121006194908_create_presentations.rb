class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
      t.date :date
      t.string :detail
      t.integer :expiration_id
      t.integer :user_id

      t.timestamps
    end
  end
end
