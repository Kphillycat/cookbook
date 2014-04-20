class ModifyQuantityInIngredientsTable < ActiveRecord::Migration
  def up
   change_column :ingredients, :quantity, :float
  end

  def down
   change_column :ingredients, :quantity, :integer
  end
end
