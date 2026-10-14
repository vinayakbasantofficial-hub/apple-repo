Feature: Explore the Apple iPhone shopping journey
  As a visitor to the Apple India website
  I want to explore the iPhone collection and product options
  So that I can choose a suitable iPhone before purchasing

  Scenario: View the iPhone range from the product landing page
    Given I navigate to "https://www.apple.com/in/iphone/"
    Then the main heading contains "iPhone"

  Scenario: Review the iPhone model comparison page
    Given I navigate to "https://www.apple.com/in/iphone/compare/"
    Then the main heading contains "Compare"

  Scenario: Explore the iPhone product catalogue before purchasing
    Given I navigate to "https://www.apple.com/in/iphone/"
    Then the main heading contains "iPhone"
