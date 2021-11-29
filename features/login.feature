Feature: Login
    In order to access my account
    As a user of Rottweiler Academy
    I want to see what’s new with Rottweiler’s Academy course catalog

Background:
    Given I have internet connection
    And I have installed the Google Chrome browser
    And I have navigated to page https://www.r-acad.com/wp-login.php

Scenario: Valid credentials
    Given I have entered <e-mail> into the email field
    And I have entered <password> into the password field
    When I press the access button
    Then I should see the main page

Examples:
    | e-mail                      | password  |
    | e.daniel.acero.r@gmail.com  | 1         |
    | karol.zerna@ucb.edu.bo      | test_2021 |
