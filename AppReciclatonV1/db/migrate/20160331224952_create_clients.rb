class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name_complet
      t.string :customer_type
      t.string :identification_number
      t.string :ubication

      t.timestamps null: false
    end
  end
end
