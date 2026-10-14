Feature: Explore the Apple iPad shopping journey
  As a visitor to the Apple India website
  I want to inspect the iPad collection and compare devices
  So that I can choose an appropriate iPad

  Scenario: View the iPad range from the product landing page
    Given I navigate to "https://www.apple.com/in/ipad/"
    Then the main heading contains "iPad"

  Scenario: Review the iPad model comparison page
    Given I navigate to "https://www.apple.com/in/ipad/compare/"
    Then the main heading contains "Compare"

  Scenario: Explore available iPad devices
    Given I navigate to "https://www.apple.com/in/ipad/"
    Then the main heading contains "iPad"
