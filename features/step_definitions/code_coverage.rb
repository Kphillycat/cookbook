Given(/^a test suite for our application$/) do
  # Reference the relevant classes to get simplecov to
  # correctly report their code coverage prior to any
  # tests being written
  Recipe
  Ingredient
  RecipesController
end

When(/^the cucumber tests are run$/) do
end

Then(/^we will see our code coverage$/) do
end
