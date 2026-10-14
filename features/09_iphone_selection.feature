Feature: Research iPhone purchase options
  As a customer evaluating Apple phones
  I want to inspect a flagship iPhone and then compare available models
  So that I can make an informed purchasing decision

  Scenario: Inspect the iPhone 18 Pro before comparing models
    Given I navigate to "https://www.apple.com/in/iphone-18-pro/"
    Then the main heading contains "iPhone 18 Pro"
    Given I navigate to "https://www.apple.com/in/iphone/compare/"
    Then the main heading contains "Compare iPhone models"
