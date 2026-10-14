Feature: Browse the iPhone product family on Apple India
  As a visitor researching Apple smartphones
  I want to review the iPhone catalogue and find its product information
  So that I can decide which device category to investigate further

  Scenario: Review the iPhone catalogue and product overview
    Given I am a visitor using a desktop browser without signing in
    When I navigate to "https://www.apple.com/in/iphone/"
    Then the page should load successfully without an HTTP error
    And the browser address should contain "/in/iphone/"
    And the page body should be visible
    And the page should display the text "iPhone"
    And the iPhone page should contain a visible primary heading
    And there should be at least one visible link on the page
    And the page should provide navigation to other Apple product areas
    And I should still be able to view the iPhone catalogue without entering credentials
