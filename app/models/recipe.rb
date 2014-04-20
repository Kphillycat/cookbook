class Recipe < ActiveRecord::Base
  has_many :ingredients
  
  def self.add_new_with_ingredients(recipe_params)
    recipe = Recipe.new(:name => recipe_params[:name], :description => recipe_params[:description], :prep_instructions => recipe_params[:prep_instructions])

    recipe_params[:ingredients][:ingredients].split(",").each do |ingredient|
      ingredient_match = ingredient.match(/([\d+]?.?\/?\d+) (\w+) (.*)/)
      ingredient_qty = ingredient_match[1].convert_from_fraction if ingredient_match[1].index("/")
      current_ingredient = Ingredient.new(:quantity => ingredient_qty || ingredient_match[1].to_f, :unit => ingredient_match[2], :name => ingredient_match[3])
      recipe.ingredients << current_ingredient     
    end
    recipe
  end  

  def update_with_ingredients(recipe_params)
    self.update(:name => recipe_params[:name], :description => recipe_params[:description], :prep_instructions => recipe_params[:prep_instructions])
    
    recipe_params[:ingredients][:ingredients].split(",").each do |ingredient|
      ingredient_match = ingredient.match(/([\d+]?.?\/?\d+) (\w+) (.*)/)
      ingredient_qty = ingredient_match[1].convert_from_fraction if ingredient_match[1].index("/")

      current_ingredient = Ingredient.new(:quantity => ingredient_qty || ingredient_match[1].to_f, :unit => ingredient_match[2], :name => ingredient_match[3])
      self.ingredients << current_ingredient     
    end
    self.save
  end
end

class String
  def convert_from_fraction
    numerator, denominator = split('/').map(&:to_f)
    denominator ||= 1
    numerator/denominator
  end

end
