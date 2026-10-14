Feature: Access MacBook Air research information
  As a customer deciding whether MacBook Air meets my needs
  I want to inspect the product page and available navigation
  So that I can continue exploring Mac notebooks before making a choice

  Scenario: Identify the MacBook Air section and its public navigation
    Given I have started a new session on a desktop browser
    And I have not entered any Apple Account credentials
    When I visit "https://www.apple.com/in/macbook-air/"
    Then the website should complete the request without an HTTP failure
    And the current path should identify the MacBook Air product page
    And the body of the page should be displayed
    And the main heading should be visible to a shopper
    And the page should mention "MacBook Air" in its content
    And the browser document title should mention "MacBook Air"
    And the page should have visible links to other available information
    And I should be able to access general laptop details without logging in
    And the product page should stay readable for further exploration
