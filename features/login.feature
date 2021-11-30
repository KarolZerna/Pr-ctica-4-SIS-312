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
    Then I should see my welcome message "<username>" in the main page

Examples:
    | e-mail                      | password  | username      |
    | e.daniel.acero.r@gmail.com  | 1         |  Hola 123     |
 #   | karol.zerna@ucb.edu.bo      | test_2021 | Hola Karol    |

Scenario Outline: Invalid email
    Given I have entered "<e-mail>" into the email field
    And I have entered "<password>" into the password field
    When I press the access button
    Then I should see an error message "Dirección de correo electrónico desconocida. Compruébala de nuevo o inténtalo con tu nombre de usuario."

Examples:
    | e-mail                    | password  |
    | edaniel.acero@gmail.com   | 1         |
#    | karol.zerna@gmail.com     | test_2021 | 


Scenario Outline: Invalid password
    Given I have entered "<e-mail>" into the email field
    And I have entered "<password>" into the password field
    When I press the access button
    Then I should see an message "¿Has olvidado tu contraseña?"

Examples:
    | e-mail                      | password    |
    | e.daniel.acero.r@gmail.com  | 4527751     |
#    | karol.zerna@ucb.edu.bo      | test1_2021  |

Scenario Outline: No password
    Given I have entered "<e-mail>" into the email field
    When I press the access button
    Then I should see "el campo de la contraseña está vacío." message

Examples:
    | e-mail                        | 
    | e.daniel.acero.r@gmail.com    | 
#    | karol.zerna@ucb.edu.bo       | 

 Scenario Outline: No email
     Given I have entered "<password>" into de password field
     When I press the access button
     Then I should see "el campo del nombre de usuario está vacío." error message
Examples:
    | password    |
    | 4527751     |
#   | test1_2021  |
