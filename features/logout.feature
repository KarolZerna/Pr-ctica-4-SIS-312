Feature: Logout
    In order to keep my account information protected
    As a user of Rottweiler Academy
    I want to logout of my account

Background:
    Given I have browsed to the Rottweiler’s Academy login page
    And I have entered "karol.zerna@ucb.edu.bo" into the email field
    And I have entered "test_2021" into the password field
    When I press the access button
    Then I should see my welcome message "Hola Karol" in the main page

Scenario: Logout of the account
    Given I click on "Karol" button that is on the upper right corner of the page
    When I click on Logout
    Then I should see a new page about Rottweiler’s Academy with the option "Iniciar sesión"