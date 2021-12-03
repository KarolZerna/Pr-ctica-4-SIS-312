Feature: Courses 
    In order to view the characteristics of a course
    As a someone interested about virtual courses of Rottweiler Academy
    I want to decide if I’m going to sign up for the course

Background:
    Given I have browsed to the Rottweiler’s Academy course page

Scenario: View course status
    Given I see the Rottweiler’s Academy full course catalog with "Cursos" title
    When I find the "Como hacer milkshakes" course
    And I click on Como hacer milkshakes
    And I’m able to see the "Ver detalles de Curso" title
    Then I should see the "No está inscrito" label

Scenario: View course details
    Given I see the Rottweiler’s Academy full course catalog with "Cursos" title
    When I find the "Como hacer milkshakes" course
    And I click on Como hacer milkshakes
    And I’m able to see the "Ver detalles de Curso" title
    Then I’m able to see the description of the course like "En este curso aprenderás a como hacer milkshakes"