When(/^I click on the details link$/) do
  page.find("#recipe-detail-link").click
  save_and_open_page
end

Then(/^I expect to see the details of that recipe$/) do
  expect(page).to have_content "Delicious Pizza Pie"
end