Feature: Registration
    In order to be part of Rottweiler Academy
    As someone interested in online courses
    I want to create an account to take a course

Background:
    Given I have browsed to the Rottweiler’s Academy login page


Scenario: Invalid data
    Given I click on the “Crear una cuenta” yellow text
    And I fill in the email address field with "ASDDASDA"
    And I fill in the password field with "12345"
    And I fill in the confirmation password field with "12345"
    And I fill in the name field with "SFDSFS"
    And I fill in the last name field with "SDFAFD"
    And I fill in the username field with "*””*12"
    When I press the  “Crear una cuenta” button
    Then I should see an error message "Please include an '@' in the email address. 'ASDDASDA' is missing an '@'" that explains the fields need to be in a correct format

# Scenario: Empty fields
#     Given I click on the “Crear una cuenta” yellow text
#     And I leave the email address field empty
#     And I leave the password field empty
#     And I leave the confirmation password field empty
#     And I leave the name field empty
#     And I leave the last name field empty
#     And I leave the username field empty
#     When I press the  “Crear una cuenta” button
#     Then I should see an error message that explains the data fields  need to be filled