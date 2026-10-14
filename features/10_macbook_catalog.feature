Feature: Browse Apple Mac notebooks
  As a customer researching portable computers
  I want to view the MacBook Air product page
  So that I can learn about the available laptop family

  Scenario: Explore MacBook Air
    Given I navigate to "https://www.apple.com/in/macbook-air/"
    Then the main heading contains "MacBook Air"
