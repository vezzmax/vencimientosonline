class CreateAccountingEntities < ActiveRecord::Migration
  def change
    create_table :accounting_entities do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
