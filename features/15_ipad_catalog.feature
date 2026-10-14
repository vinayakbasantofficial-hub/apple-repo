Feature: Explore Apple's iPad tablet range in India
  As a customer evaluating tablets for work and entertainment
  I want to access the current iPad family catalogue
  So that I can begin researching tablets without creating an account

  Scenario: Browse the official iPad product catalogue
    Given I am visiting Apple's India website without logging in
    When I open "https://www.apple.com/in/ipad/"
    Then the page should respond successfully
    And the browser address should contain "/in/ipad/"
    And the page body should be present
    And the visible page content should include "iPad"
    And a visible heading should identify the tablet section
    And the page should include at least one visible navigational link
    And I should be able to access other Apple product categories from the site navigation
    And browsing tablet information should not require authentication
    And the iPad catalogue should remain available for further exploration
