Feature: Viewing Recipes
  In order to view the recipe details
  As a user
  I would like to click on the details link and see all the recipe's details

  Background: 
    Given There are recipes
    
  @javascript
  Scenario: Viewing recipe details
    Given I'm on the home page
    When I click on the details link
    Then I expect to see the details of that recipe