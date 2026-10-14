Feature: Research the MacBook Air product overview
  As a prospective laptop customer
  I want to examine the official MacBook Air landing page
  So that I can understand the product before exploring purchase options

  Scenario: Open the MacBook Air overview and verify product content
    Given I am browsing Apple's India website without signing in
    And I am considering a lightweight Mac notebook
    When I open "https://www.apple.com/in/macbook-air/"
    Then the page should respond successfully
    And the browser URL should contain "/in/macbook-air/"
    And the page should render its main content
    And the first main heading should be visible
    And the visible document should include "MacBook Air"
    And the browser title should refer to "MacBook Air"
    And I should find navigation links for exploring Apple information
    And reading the product overview should not require an Apple Account
    And the MacBook Air page should remain available after loading
