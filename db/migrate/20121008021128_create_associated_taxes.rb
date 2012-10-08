class CreateAssociatedTaxes < ActiveRecord::Migration
  def change
    create_table :associated_taxes do |t|
      t.integer :user_id
      t.integer :tax_id
      t.integer :company_id

      t.timestamps
    end
  end
end
