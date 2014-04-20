Feature: Generating a code coverage report
  In order to correctly view our initial code coverage
  As a student of web development
  I want to encourage simplecov to correctly analyze our test suite

  Scenario: Viewing our initial code coverage
    Given a test suite for our application
    When the cucumber tests are run
    Then we will see our code coverage
