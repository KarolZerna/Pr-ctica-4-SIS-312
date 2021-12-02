Feature: Registration
    In order to be part of Rottweiler Academy
    As someone interested in online courses
    I want to create an account to take a course

Background:
    Given I have browsed to the Rottweiler’s Academy registration page
    And I see the Rottweiler’s Academy registration page with "Crear una cuenta" title

Scenario: Invalid data

    Given I fill in the email address field with "ASDDASDA"
    And I fill in the password field with "12345"
    And I fill in the confirmation password field with "12345"
    And I fill in the name field with "SFDSFS"
    And I fill in the last name field with "SDFAFD"
    And I fill in the username field with "*A-*12"
    When I press the Crear una cuenta button
    Then I should see an error message "Please include an @ in the email address. Don't use numbers in your name. Don't use numbers in your last name." that explains the fields need to be in a correct format

Scenario: Empty fields
    Given I press the Crear una cuenta button
    Then I should see an error message "Este es un campo obligatorio." that explains the data fields need to be filled