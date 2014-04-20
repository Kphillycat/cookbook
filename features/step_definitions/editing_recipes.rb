Given(/^I click on the edit link$/) do
  click_link "Edit"
end

When(/^I enter in the new name "(.*?)"$/) do |new_name|
  fill_in "recipe_name", :with => new_name
  click_button "Update Recipe"
end

Then(/^I expect to see the recipe with the new name "(.*?)"$/) do |new_name|
  save_and_open_page
  expect(page).to have_content(new_name)
end