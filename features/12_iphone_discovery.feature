Feature: Explore available smartphones through Apple India
  As a prospective smartphone buyer
  I want to reach the official iPhone range and inspect the available information
  So that I can research the products before selecting a model

  Scenario: Access the official iPhone product listing
    Given I have opened a fresh browser session and am not authenticated
    When I open "https://www.apple.com/in/iphone/"
    Then the website should return a successful page response
    And the current URL should identify the India iPhone section
    And the main document content should have finished loading
    And the screen should contain the word "iPhone"
    And a visible page heading should identify the iPhone section
    And the page should present links for browsing product information
    And the Apple site navigation should be available
    And I should not be required to complete a login form to read the catalogue
    And the iPhone information should remain accessible at the end of the visit
