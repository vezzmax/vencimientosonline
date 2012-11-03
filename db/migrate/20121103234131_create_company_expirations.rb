class CreateCompanyExpirations < ActiveRecord::Migration
  def change
    create_table :company_expirations do |t|
      t.integer :associated_tax_id
      t.date :date

      t.timestamps
    end
  end
end
