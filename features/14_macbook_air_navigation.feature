Feature: Discover MacBook Air details from its product page
  As a visitor considering a lightweight Mac notebook
  I want to navigate the official MacBook Air information page
  So that I can locate product details before making a purchase decision

  Scenario: Check MacBook Air page access and information navigation
    Given I start from an unauthenticated desktop browser session
    When I navigate directly to "https://www.apple.com/in/macbook-air/"
    Then the navigation should complete with a successful response
    And the current address should represent the MacBook Air page
    And the page body should be displayed
    And the text "MacBook Air" should appear in the document
    And the page should have a visible product heading
    And I should find at least one visible link to further content
    And the Apple global navigation should allow browsing other products
    And the page should not require account credentials for general product research
    And the current MacBook Air content should remain readable
