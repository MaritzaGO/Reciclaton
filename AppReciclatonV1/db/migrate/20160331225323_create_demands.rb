class CreateDemands < ActiveRecord::Migration
  def change
    create_table :demands do |t|
      t.string :client_id
      t.string :residue_id
      t.string :demanded_monthly_quantity
      t.integer :state

      t.timestamps null: false
    end
  end
end
