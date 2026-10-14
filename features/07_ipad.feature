Feature: Explore and evaluate iPad models on Apple India
  As a customer researching a new tablet
  I want to browse available iPads, review a professional model, and compare devices
  So that I can choose a tablet without logging in

  Scenario: Discover the available iPad family
    Given I navigate to "https://www.apple.com/in/ipad/"
    Then the main heading contains "iPad"

  Scenario: Explore the iPad Pro product overview
    Given I navigate to "https://www.apple.com/in/ipad-pro/"
    Then the main heading contains "iPad Pro"

  Scenario: Compare iPad models
    Given I navigate to "https://www.apple.com/in/ipad/compare/"
    Then the main heading contains "Compare iPad models"
