Feature: Explore the iPad product family
  As a visitor looking for an Apple tablet
  I want to access the public iPad collection on Apple India
  So that I can research the available tablet family before purchasing

  Scenario: Open the iPad catalogue and confirm browsing information
    Given I am using a browser without an authenticated Apple Account
    And I want to investigate Apple's tablet products
    When I open "https://www.apple.com/in/ipad/"
    Then the iPad catalogue should return a successful response
    And the address bar should include "/in/ipad/"
    And the page body should be loaded and visible
    And a primary heading should be displayed
    And the visible body should mention "iPad"
    And the browser document title should refer to "iPad"
    And the page should offer links for further product exploration
    And the product range should be readable without signing in
    And I should be able to continue researching the iPad family
