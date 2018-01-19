Feature: Login

  As a User
  I want to be able to login

  @positive
  Scenario: Positive Login
    Given I am on Registration page
    And I submit registration form with valid data
    And I perform the actions necessary to log out
    And I am on Login page
    When I submit valid credentials
    Then I am logged in