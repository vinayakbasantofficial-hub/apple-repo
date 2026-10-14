Feature: Find Apple's current iPhone range
  As a shopper beginning research into Apple smartphones
  I want to find the official iPhone selection on the India website
  So that I can continue comparing phones without an account

  Scenario: Discover the public iPhone catalogue and its browsing links
    Given my browser has no authenticated Apple customer session
    And I want to inspect the official Apple smartphone catalogue
    When I navigate to "https://www.apple.com/in/iphone/"
    Then the destination should load without an HTTP error
    And the address bar should identify the India iPhone section
    And the page body should be present and readable
    And a primary heading should be visible on the page
    And the visible content should mention "iPhone"
    And the browser title should contain "iPhone"
    And the document should provide links to other Apple information
    And general product content should be available without entering credentials
    And I should be able to continue browsing the iPhone range
