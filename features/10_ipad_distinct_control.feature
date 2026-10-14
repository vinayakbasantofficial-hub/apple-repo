Feature: Apple iPad catalogue verification
  Scenario: Verify the iPad collection page title
    Given I navigate to "https://www.apple.com/in/ipad/"
    Then the main heading contains "iPad"
