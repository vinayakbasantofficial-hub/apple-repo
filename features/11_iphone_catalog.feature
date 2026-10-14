Feature: Explore the iPhone family on Apple India
  As a customer researching smartphones
  I want to access the official iPhone collection and inspect its browsing options
  So that I can evaluate the available phones without signing in

  Scenario: Open the iPhone collection and review product discovery options
    Given I am using a new browser session without an Apple Account login
    And I am interested in researching the iPhone product family in India
    When I open "https://www.apple.com/in/iphone/"
    Then the website should return a successful response
    And the browser URL should contain "/in/iphone/"
    And the page should display its main document content
    And the main page heading should be visible
    And the page text should include "iPhone"
    And the document title should refer to "iPhone"
    And the page should contain links to explore more Apple information
    And a visitor should be able to read the product information without authentication
    And the iPhone collection should remain accessible for further research
