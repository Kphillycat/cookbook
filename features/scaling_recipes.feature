Feature: Scaling Recipes
  In order to scale up a recipe
  As a user
  I would like to enter an amount and see the appropriate updated ingredients quantity
  
  Background: 
    Given There are recipes 
  
  @javascript
  Scenario: Scaling up the recipe
    Given I'm on the home page
    Given I click on the details link
    When I enter in the number "2"
    Then I expect to see the recipe scale up by a factor of "2"