When(/^I click on the details link$/) do
  page.find("#recipe-detail-link").click
end

Then(/^I expect to see the details of that recipe$/) do
  expect(page).to have_content "Delicious Pizza Pie"
end