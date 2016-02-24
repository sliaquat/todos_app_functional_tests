Feature: Logging In

  Scenario: Successfully logging in
    Given I am on the homepage
    When I login with username "test@example.com" and password "123456"
    Then the login should be successful

  Scenario: Failing logging in with wrong password
    Given I am on the homepage
    When I login with username "test@example.com" and password "xxxxxxx"
    Then I should see an error message "Incorrect password"