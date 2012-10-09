class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :verificationDigit
      t.date :closeDate
      t.integer :accounting_entity_id

      t.timestamps
    end
  end
end
