Feature: Apple smartphone collection
  As a shopper researching Apple phones
  I want to examine the iPhone product range
  So that I can decide which device to investigate further

  Scenario: Examine the available iPhone range
    Given I navigate to "https://www.apple.com/in/iphone/"
    Then the main heading contains "iPhone"
