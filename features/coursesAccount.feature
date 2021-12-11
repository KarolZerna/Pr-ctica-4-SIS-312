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

Scenario: Visualice content from a lesson
    Given I have browsed to the Rottweiler’s Academy course page
    And I scroll the page
    And I see the Rottweiler’s Academy full course catalog with "Cursos" title
    When I find the "Curso básico de Robótica con Arduino" course
    And I click on Curso Básico de Robótica con Arduino
    And I’m able to see the description of the course like "En este curso aprenderás los conocimientos necesarios para armar y programar un Robot con tecnología Arduino."
    And I click on the Start course button
    And I should see a new page with all the lessons offered by the course and a button to go back that says "Volver a Curso"
    Then I click on the lesson Entradas y salidas Digitales
    And I should see a youtube video and a description that says "Veremos como usar las entradas y salidas digitales para detectar cuando se presiona un pulsador y encender un LED."

Scenario: Uncheck a lesson as completed
    Given I have browsed to the Rottweiler’s Academy course page
    And I scroll the page
    And I see the Rottweiler’s Academy full course catalog with "Cursos" title
    When I find the "Curso básico de Robótica con Arduino" course
    And I click on Curso Básico de Robótica con Arduino
    And I’m able to see the description of the course like "En este curso aprenderás los conocimientos necesarios para armar y programar un Robot con tecnología Arduino."
    And I click on the Start course button
    And I should see a new page with all the lessons offered by the course and a button to go back that says "Volver a Curso"
    Then I click on the lesson Introducción a Arduino
    And I should see a youtube video and a description that says "Haremos una breve introducción a la plataforma Arduino permitiendo vislumbrar su increíble potencial y su facilidad de uso."
    And I should see a button that says "Marcar como completado"

Scenario: Mark a lesson as completed
    Given I have browsed to the Rottweiler’s Academy course page
    And I scroll the page
    And I see the Rottweiler’s Academy full course catalog with "Cursos" title
    When I find the "Curso" course
    And I click on Curso
    And I click on the Start course button that says Inicio Curso
    And I should see a new page with all the lessons offered by the course and a button to go back that says "Volver a Curso"
    Then I click on the Marcar Como Completado Button
    And I should see "Completado" label on the desrciption page of the course

Scenario: See my courses from my profile
    Given I have browsed to the Rottweiler’s Academy course page
    When I go to my profile page
    And I go to the courses subpage
    Then I should see my bought courses like "Curso" and "Curso básico de Robótica con Arduino"