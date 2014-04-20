class Recipe < ActiveRecord::Base
  has_many :ingredients
  
  def self.add_new_with_ingredients(recipe_params)
    recipe = Recipe.new(:name => recipe_params[:name], :description => recipe_params[:description], :prep_instructions => recipe_params[:prep_instructions])

    recipe_params[:ingredients][:ingredients].split(",").each do |ingredient|
      ingredient_match = ingredient.match(/(\d+) (\w+) (\w+)/)
      current_ingredient = Ingredient.new(:quantity => ingredient_match[1], :unit => ingredient_match[2], :name => ingredient_match[3])
      recipe.ingredients << current_ingredient     
    end
    recipe

  end  
end
