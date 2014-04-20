When(/^I enter in the number "(.*?)"$/) do |num|
  fill_in "serving-scale", :with => num
end

Then(/^I expect to see the recipe scale up by a factor of "(.*?)"$/) do |num|
  expect(page).to have_content("#{num.to_i * @recipe.ingredients[0].quantity} #{@recipe.ingredients[0].unit.pluralize(num)} of #{@recipe.ingredients[0].name}")  
end