Feature: Shopping Cart
    In order to learn new skills
    As someone interested about virtual courses of Rottweiler Academy
    I want to add courses to my cart

Background:
    Given I have browsed to the Rottweiler’s Academy course page
    And I see the Rottweiler’s Academy full course catalog with "Cursos" title
    And I find the "Como hacer milkshakes" course
    And I click on Como hacer milkshakes
    And I’m able to see the "Ver detalles de Curso" title
    When I click on the Sign up button
    And I should see a new page with the option "Añadir al carrito"
    Then click on Añadir al carrito

Scenario: Add a course to my cart
    Given I should see the cart with a red tag that increases in 1

Scenario: Check my products
    Given I click on the cart icon which is in the upper right corner of the page
    Then I should see a the course that I have ordered already

@prueba
Scenario: Remove a course from my cart
    Given I click on the cart icon which is in the upper right corner of the page
    Then I should see a the course that I have ordered already
    When I click on the ‘x’ icon that is next to the course
    Then I wait for the course to be removed from the cart
    Then I click on the cart icon which is in the upper right corner of the page
    And I should’n see courses but I can see a message "No hay productos en el carrito."