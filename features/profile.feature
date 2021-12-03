Feature: Profile
    In order to check my profile data
    As a user of Rottweiler Academy
    I want to see my account details

Background:
    Given I have browsed to page https://www.r-acad.com/wp-login.php
    And I see the Rottweiler’s Academy page
    And I click on the button that says <username>

Scenario Outline: Correct account details

    Given I click on the “Perfil” option from the dropdown menu
    When I click on the “Ver” option from the profile dropdown menu
    Then I should see all my account details like <name> , <lastname> and <username>

Examples:
    | username    | name     | lastname   |
    |   Karol     | Karol    |  Zerna     |
    |   Daniel    | Daniel   | Acero      |


Scenario Outline: Modify account details

    Given I click on the "Perfil" option from the dropdown menu
    And I click on the "Ver" option from the profile dropdown menu
    And I see my account profile with details
    When I click on the "Editar el perfil" button
    And I see “Editar la información de "Details" page
    And I write "<updatedName>" on the name field
    And I click the "Guardar los cambios" button
    Then I should see a message with the confirmation "Cambios guardados"

Examples:
    | username    | name     | lastname    | updatedName     |
    |   Karol     | Karol    |  Zerna      | Karol Lenny     |
    |   Daniel    | Daniel   | Acero       | Edwin Daniel    |



Scenario Outline: Send Messages

    Given I click on the “Mensajes” option from the dropdown menu
    And I see the inbox page
    When I click on the "Escriba los nombres de una o más personas" text field
    And I write "<user>" 
    And I click on the "Escribir mensaje" text nox
    And I write "<message>" 
    And I click on the "Enviar" button
    Then I should see the "<message>" on the "<user>" chat

Examples:
    | user         | message                                | 
    | Sebastián    |   hola amigos de Rottweiler Academy    | 
    | Sebastian    |   hola instructor, saludos             |

Scenario Outline: Modify account details with valid data

    Given I click on the "Perfil" option from the dropdown menu
    And I click on the "Ver" option from the profile dropdown menu
    And I see my account profile with details
    When I click on the "Editar el perfil" button
    And I see "Editar la información de Details" page
    And I write "<updatedLastName>" on the lastname field
    And I click the "Guardar los cambios" button
    Then I should see an error message

Examples:
    | username    | name     | lastname   | updatedLastName          |
    |   Karol     | Karol    |  Zerna     | *0ie03924390™£¢∞§¶•ªº–   |
    |   Daniel    | Daniel   | Acero      | 1234567                  |