Feature: Apple iPhone catalogue
  Scenario: Verify the iPhone collection page title
    Given I navigate to "https://www.apple.com/in/iphone/"
    Then the main heading contains "iPhone"
