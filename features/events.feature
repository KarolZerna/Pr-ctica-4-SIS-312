Feature: Events
    In order to participate in conferences
    As a someone interested in workshops
    I want to know about Rottweiler’s Academy events

Background:
    Given I have browsed to the Rottweiler’s Academy course page

Scenario: Check events
    Given I click on the “Eventos” section that is on the upper left corner of the page
    And I see the “Próximos Eventos” page
    And I click on “Eventos Anteriores”
    Then I should see a new page with Rottweiler’s Academy full list of events

