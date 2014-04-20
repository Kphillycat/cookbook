Given(/^There are recipes$/) do
  @recipe = FactoryGirl.create(:recipe)
  @ingredient = FactoryGirl.create(:ingredient)
  @recipe.ingredients << @ingredient
  # FactoryGirl.build(:ingredient_2)
  # FactoryGirl.build(:ingredient_3)
end

When(/^I'm on the home page$/) do
  visit root_path
  save_and_open_page
end

Then(/^I expect to see all the recipes$/) do
  pending # express the regexp above with the code you wish you had
end