
Feature: Visiting the root path
  Scenario: Visiting the root path
    Given Nothing
    When I visit the root path
    Then I should see "Hello world!"
