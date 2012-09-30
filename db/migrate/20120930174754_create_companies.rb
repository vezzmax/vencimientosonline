class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :CUIT
      t.date :close_date
      t.integer :accounting_entity_id

      t.timestamps
    end
  end
end
