@webapi
Feature: My Order

  # This is an alternative to the @login tag
  # Background:
  #  Given the client is logged in

Rule: The pizzas the client has put into the basket are listed on the My Order page

  @login
  Scenario: Customer has a few different pizzas in the basket
    Given the client has the following items in the basket
      | name       | size   |
      | Margherita | Small  |
      | BBQ        | Medium |
    When the client checks the my order page
    Then the ordered items should be listed on the my order page

Rule: Additional pizzas can be added to the basket

  @login
  Scenario: Customer added a pizza to the basket
    Given the client has the following items in the basket
      | name       | size   |
      | BBQ        | Medium |
    When the client adds a Small Margherita pizza to the basket
    Then the following items should be listed on the my order page
      | name       | size   |
      | BBQ        | Medium |
      | Margherita | Small  |
