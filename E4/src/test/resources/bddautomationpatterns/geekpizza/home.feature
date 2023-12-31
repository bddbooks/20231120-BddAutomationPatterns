@webapi
Feature: Home

Rule: A positive message should be shown on the home page

  Scenario: Welcome message is shown on home page
    When the client checks the home page
    Then the home page main message should be: "Welcome to Geek Pizza!"

Rule: The user name should be shown on the home page if logged in

  Scenario: The logged-in user name is shown on home page
    #Given there is a user registered with user name 'Trillian' and password '139139'
    Given the client "Trillian" is logged in
    When the client checks the home page
    Then the user name of the client should be on the home page