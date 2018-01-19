Feature: Lost password

  As a User
  I want the lost password to be restored

  @positive
  Scenario: Positive Lost password
    Given I am on Registration page
    And I submit registration form with valid data
    And I perform the actions necessary to log out
    And I am on Login page
    When I perform the actions necessary to recover the password
    Then I see a message that my actions led to the expected result
