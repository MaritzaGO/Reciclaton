class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :recycling_line
      t.string :environmental_impact

      t.timestamps null: false
    end
  end
end
