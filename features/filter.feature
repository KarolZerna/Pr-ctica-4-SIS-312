Feature: Filter
    In order to find quickly a course
    As a user of Rottweiler Academy
    I want to filter by order, category or instructor.

Background:
    Given I have browsed to the Rottweiler’s Academy login page
    And I have entered "karol.zerna@ucb.edu.bo" into the email field
    And I have entered "test_2021" into the password field
    When I press the access button
    Then I should see my welcome message "Hola Karol" in the main page

Scenario: Filter by progress
    Given I click on the Course section that is on the upper left corner of the page
    And I see the Rottweiler’s Academy full course catalog with "Cursos" title
    And I click on the button that says “Alfabetico”
    When I click on the “Mi progreso” text from the dropdown menu
    Then I should see all courses I have signed up with the text "EN PROGRESO"
