Feature: Filter

    In order to find quickly a course
    As a user of Rottweiler Academy
    I want to filter by order, category or instructor.

Background:
    Given I have browsed to page https://www.r-acad.com/wp-login.php

Scenario: Filter by progress

    Given I see the Rottweiler’s Academy full course catalog
    When I click on the button that says “Alfabetico”
    And I click on the “Mi progreso” text from the dropdown menu
    Then I should see all courses I have signed up

Scenario: Filter by category

    Given I see the Rottweiler’s Academy full course catalog
    When I click on the button that says “Todas las categorias”
    And I click on the “Informática y Software” text from the dropdown menu
    Then I should see all courses related to that subject

Scenario: Filter by instructor

    Given I see the Rottweiler’s Academy full course catalog
    When I click on the button that says “Todos los instructores”
    And I click on the “rotweillergroupbolivia” text from the dropdown menu
    Then I should see all courses created by the author “rotweillergroupbolivia”

Scenario: Filter events by keyword

    Given I see the Rottweiler’s Academy full course catalog
    When I click on the “Eventos” section that is on the upper section of the page
    And I see the “Próximos Eventos” page.
    And I click on the “palabra clave” field
    And I write “presupuesto”
    And I click on the yellow button that says “Buscar Eventos”
    Then I should see all the events that contain the word “presupuesto” on the title or description.

Scenario: Filter events by date

    Given I see the Rottweiler’s Academy full course catalog
    When I click on the “Eventos” section that is on the upper section of the page
    And I see the “Próximos Eventos” page.
    And I click on the date button that is next to the finder
    And I click on the “Noviembre 2021” blue text that appears on the dropdown calendar.
    And I click on the “2021” blue text that appears on the dropdown calendar.
    And I click on the “2020” text that appears on the dropdown calendar list.
    And I click on the “Nov” text that appears on the dropdown calendar list.
    And I click on the “25” text that appears on the dropdown calendar list.
    Then I should see all the events that were held on 25/Nov/2020
