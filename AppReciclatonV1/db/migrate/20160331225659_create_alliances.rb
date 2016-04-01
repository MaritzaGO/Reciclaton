class CreateAlliances < ActiveRecord::Migration
  def change
    create_table :alliances do |t|
      t.string :client_supplier_id
      t.string :client_recipient_id
      t.string :supply_id
      t.string :demand_id
      t.string :agreed_quantity

      t.timestamps null: false
    end
  end
end
