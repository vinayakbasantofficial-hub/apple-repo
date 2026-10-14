Feature: Research MacBook Air on Apple India
  As a customer comparing portable computers
  I want to inspect the official MacBook Air product information
  So that I can understand the laptop range before choosing a configuration

  Scenario: Inspect the MacBook Air product landing page
    Given I am browsing Apple India without a customer account
    When I visit "https://www.apple.com/in/macbook-air/"
    Then the website should return a successful HTTP response
    And the URL should contain "/in/macbook-air/"
    And the document should show its main content
    And the body text should contain "MacBook Air"
    And a visible heading should be available on the product page
    And at least one link should be visible for exploring additional information
    And the site-wide Apple navigation should be present
    And I should be able to inspect the product without signing in
    And the MacBook Air page should remain available after loading
