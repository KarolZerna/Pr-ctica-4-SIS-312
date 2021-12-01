Feature: Events
    In order to participate in conferences
    As a someone interested in workshops
    I want to know about Rottweiler’s Academy events

Background:
    Given I have browsed to page https://www.r-acad.com/courses/

Scenario: Check events

    Given I see the Rottweiler’s Academy full course catalog
    When I click on the “Eventos” section that is on the upper left corner of the page
    And I see the “Próximos Eventos” page
    And I click on “Eventos Anteriores”
    Then I should see a new page with Rottweiler’s Academy full list of events

Feature: Events as user

    In order to participate in conferences
    As a user of Rottweiler Academy
    I want to know about Rottweiler’s Academy events

Background:
    Given I have browsed to page https://www.r-acad.com/wp-login.php
    And I have entered "<e-mail>" into the email field
    And I have entered "<password>" into de password field
    And I press the access button

Examples:
    | e-mail                      | password  |
    | e.daniel.acero.r@gmail.com  | 1         |
    | karol.zerna@ucb.edu.bo      | test_2021 |

Scenario: Check events

    Given I'm already on the Rottweiler Academy page
    When I click on the “Eventos” section that is on the upper left corner of the page
    And I see the “Próximos Eventos” page
    And I click on “Eventos Anteriores”
    Then I should see a new page with Rottweiler’s Academy full list of events
