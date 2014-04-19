class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :unit
      t.integer :quantity
      t.string :name
      t.integer :recipe_id

      t.timestamps
    end
  end
end
