class CreateResidues < ActiveRecord::Migration
  def change
    create_table :residues do |t|
      t.string :name_redidue
      t.string :category_id
      t.string :available_quantity

      t.timestamps null: false
    end
  end
end
