Feature: Filter
    In order to find quickly a course
    As a user of Rottweiler Academy
    I want to filter by order, category or instructor.

Background:
    Given I have browsed to the Rottweiler’s Academy course page
    And I see the Rottweiler’s Academy full course catalog with "Cursos" title

Scenario: Filter by progress
    Given I click on the button that says “Alfabetico”
    When I click on the “Mi progreso” text from the dropdown menu
    Then I should see all courses I have signed up
