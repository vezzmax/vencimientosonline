class CreateTaxes < ActiveRecord::Migration
  def change
    create_table :taxes do |t|
      t.string :name
      t.string :period
      t.integer :agency_id

      t.timestamps
    end
  end
end
