Feature: Profile
    In order to check my profile data
    As a user of Rottweiler Academy
    I want to see my account details

Background:
    Given I have browsed to the Rottweiler’s Academy login page
    And I have entered "karol.zerna@ucb.edu.bo" into the email field
    And I have entered "test_2021" into the password field
    When I press the access button
    Then I should see my welcome message "Hola Karol" in the main page
    And I click on "Karol" button that is on the upper right corner of the page

@a
Scenario: Correct account details

    Given I click on the "Ver" option from the profile dropdown menu
    When I am at the Profile page
    Then I should see all my account details like "Karol" "Zerna" and "Karol"

Scenario: Modify account details

    Given I click on the "Ver" option from the profile dropdown menu
    And I see my account profile with details
    When I click on the "Editar el perfil" button
    And I see "Editar la información" de "Details" page
    And I write "Karol Lenny" on the name field
    And I click the "Guardar los cambios" button
    Then I should see a message with the confirmation "Cambios guardados"

Scenario: Send Messages

    Given I click on the "Mensajes" option from the dropdown menu
    And I see the inbox page
    When I click on the "Escriba los nombres de una o más personas" text field
    And I write "Sebastián" 
    And I click on text box
    And I write on the "hola instructor, saludos" text box
    And I click on the "Enviar" button
    Then I should see the message sent on the "Sebastián" chat

Scenario Outline: Modify account details with valid data

    Given I click on the "Perfil" option from the dropdown menu
    And I click on the "Ver" option from the profile dropdown menu
    And I see my account profile with details
    When I click on the "Editar el perfil" button
    And I see "Editar la información de Details" page
    And I write "*0ie03924390™£¢∞§¶•ªº–" on the lastname field
    And I click the "Guardar los cambios" button
    Then I should see an error message