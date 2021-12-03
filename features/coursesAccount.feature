Feature: Courses with an account
    In order to have access to course lessons
    As a user of Rottweiler Academy
    I want to but the course

Background: 
    Given I have browsed to the Rottweiler’s Academy login page
    And I have entered "karol.zerna@ucb.edu.bo" into the email field
    And I have entered "test_2021" into the password field
    When I press the access button
    Then I should see my welcome message "Hola Karol" in the main page

Scenario: Access to the lessons of the “Curso Básico de Robótica con Arduino” course
    Given I have browsed to the Rottweiler’s Academy course page
    And I scroll the page
    And I see the Rottweiler’s Academy full course catalog with "Cursos" title
    When I find the "Curso básico de Robótica con Arduino" course
    And I click on Curso Básico de Robótica con Arduino
    And I’m able to see the description of the course like "En este curso aprenderás los conocimientos necesarios para armar y programar un Robot con tecnología Arduino."
    And I click on the Start course button
    Then I should see a new page with all the lessons offered by the course and a button to go back that says "Volver a Curso"