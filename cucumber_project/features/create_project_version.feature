Feature: Create in my project new version

  As a User
  I want to create in my project new version

  @positive
  Scenario: Positive Create project version
    Given I am on Registration page
    And I submit registration form with valid data
    And I perform the actions necessary to create project
    When I perform the actions necessary to create project version
    Then I see a message that my actions led to the expected result