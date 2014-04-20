Given(/^I am on the new recipe page$/) do
  visit new_recipe_path
end

When(/^I fill in the recipe details$/) do
  save_and_open_page
  fill_in "recipe_name", :with => "Apple Pie"
  fill_in "recipe_description", :with => "Yummy semi-homemade Apple Pie"
  fill_in "recipe_prep_instructions", :with => "Lay pie crust in pan, add apples, sugar, lemon juice and cover with top layer of crust. Make 4-5 slices in the top crust layer to allow for venting. Bake 425 degrees F for 15 minutes."
  fill_in "recipe_ingredients_ingredients", :with => "2 lbs of apples, 3 Tbl butter, 2 cup brown sugar, 1 tsp lemon juice"
  click_button "Create Recipe"
end

Then(/^I expect to see it updated on the home page$/) do
  expect(page).to have_content("Apple Pie")
end