class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.string :client_id
      t.string :residue_id
      t.string :supplied_monthly_quantity
      t.integer :stock
      t.integer :state

      t.timestamps null: false
    end
  end
end
