Feature: Adding Recipes
  In order to add a recipe
  As a user
  I would like to enter the details of the recipe and see it updated on home page

  @javascript
  Scenario: Adding new recipe
    Given I am on the new recipe page
    When I fill in the recipe details
    Then I expect to see it updated on the home page