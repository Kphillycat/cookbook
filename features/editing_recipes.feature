Feature: Editing Recipes
  In order to edit a recipe
  As a user
  I would like to update new a recipe
  
  Background: 
    Given There are recipes 
  
  @javascript
  Scenario: Editing the recipe name
    Given I'm on the home page
    Given I click on the edit link
    When I enter in the new name "Pizza Pie"
    Then I expect to see the recipe with the new name "Pizza Pie" 