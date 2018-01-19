Feature: Add user in project

  As a User
  I want to add another user to my project

  @positive
  Scenario: Positive Add user in project
    Given I am on Registration page
    And I submit registration form with valid data
    And I perform the actions necessary to create project
    When I add to my project another use
    Then I see a message that my actions led to the expected result