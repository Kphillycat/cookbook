Feature: Viewing Recipes
  In order to view the recipes
  As a user
  I would like to goto the home page and see all the recipes

@javascript
  Scenario: 
    Given There are recipes
    When I'm on the home page
    Then I expect to see all the recipes