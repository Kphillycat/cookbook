# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Recipe.create(:name => "Baked Garlic Parmesan Chicken", :description => "A wonderful baked chicken recipe that's quick and easy! Using just a few handy ingredients, create a delicious main dish, that also makes great leftovers - if there are any! Serve with a salad and pasta or rice for a quick, scrumptious dinner.", :prep_instructions => "1) Preheat oven to 350 degrees F (175 degrees C). Lightly grease a 9x13 inch baking dish. 2) In a bowl, blend the olive oil and garlic. In a separate bowl, mix the bread crumbs, Parmesan cheese, basil, and pepper. Dip each chicken breast in the oil mixture, then in the bread crumb mixture. Arrange the coated chicken breasts in the prepared baking dish, and top with any remaining bread crumb mixture. 3) Bake 30 minutes in the preheated oven, or until chicken is no longer pink and juices run clear.")

Recipe.last.ingredients << Ingredient.create(:unit => "Tbl", :quantity => 2, :name =>"Olive Oil")
Recipe.last.ingredients << Ingredient.create(:unit => "Clove", :quantity => 1, :name =>"Garlic")
Recipe.last.ingredients << Ingredient.create(:unit => "Cup", :quantity => 1, :name =>"Dry Bread Crumbs")
Recipe.last.ingredients << Ingredient.create(:unit => "Cups", :quantity => 2, :name =>"Parmesan cheese")
Recipe.last.ingredients << Ingredient.create(:unit => "tsp", :quantity => 1, :name =>"Dried Basil Leaves")
Recipe.last.ingredients << Ingredient.create(:unit => "tsp", :quantity => 1, :name =>"Ground Black Pepper")
Recipe.last.ingredients << Ingredient.create(:unit => "pieces", :quantity => 6, :name =>"Boneless Skinless Chicken Breasts")

