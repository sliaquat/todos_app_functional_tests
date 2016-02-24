Feature: Logging In

  Background:
    Given I am on the homepage

  Scenario: Successfully logging in
    When I login with username "test@example.com" and password "123456"
    Then the login should be successful

  Scenario: Failing logging in with wrong password
    When I login with username "test@example.com" and password "xxxxxxx"
    Then I should see an error message "Incorrect password"