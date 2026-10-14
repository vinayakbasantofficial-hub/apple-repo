Feature: iPhone catalogue
  Scenario: Open the iPhone product collection
    Given I navigate to "https://www.apple.com/in/iphone/"
    Then the main heading contains "iPhone"
