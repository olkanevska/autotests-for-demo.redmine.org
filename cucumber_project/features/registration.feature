Feature: Registration

  As a User
  I want to be registered on the website

  @positive
  Scenario: Positive Registration
    Given I am on Registration page
    When I submit registration form with valid data
    Then I see a message that my actions led to the expected result
    And I am logged in