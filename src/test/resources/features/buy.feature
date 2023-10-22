# Chanitaphon Lohamongkol 6410406533
Feature: Buy products
  As a customer
  I want to buy products

  Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Butter" with price 50.00 and stock of 10 exists

  Scenario: Buy one product
    When I buy "Bread" with quantity 2
    Then total should be 41.00
    Then "Bread" in stock should remain 3

  Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 1
    Then total should be 121.00
    Then "Bread" in stock should remain 3
    Then "Jam" in stock should remain 9

  Scenario: Buy multiple products
    When I buy "Bread" with quantity 2
    And I buy "Jam" with quantity 3
    And I buy "Butter" with quantity 5
    Then total should be 556.00
    Then "Bread" in stock should remain 3
    Then "Jam" in stock should remain 7
    Then "Butter" in stock should remain 6