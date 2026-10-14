Feature: Explore and evaluate iPhone models on Apple India
  As a customer researching a new phone
  I want to inspect the current iPhone line-up, a flagship device, and model comparisons
  So that I can make an informed purchase decision without signing in

  Scenario: Discover available iPhone products
    Given I navigate to "https://www.apple.com/in/iphone/"
    Then the main heading contains "iPhone"

  Scenario: Review the iPhone 18 Pro product overview
    Given I navigate to "https://www.apple.com/in/iphone-18-pro/"
    Then the main heading contains "iPhone 18 Pro"

  Scenario: Compare available iPhone devices
    Given I navigate to "https://www.apple.com/in/iphone/compare/"
    Then the main heading contains "Compare iPhone models"
