Feature: Login
    In order to access my account
    As a user of Rottweiler Academy
    I want to see what’s new with Rottweiler’s Academy course catalog

Background:
    Given I have browsed to the Rottweiler’s Academy login page 

Scenario Outline: Valid credentials
    Given I have entered "<e-mail>" into the email field
    And I have entered "<password>" into the password field
    When I press the access button
    Then I should see my user name "<username>" in the main page

Examples:
    | e-mail                      | password  | username |
    | e.daniel.acero.r@gmail.com  | 1         | daniel   |
    | karol.zerna@ucb.edu.bo      | test_2021 | karol    |
