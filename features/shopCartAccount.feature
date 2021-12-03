Feature: Shopping Cart with an account
    In order to learn new skills
    As a user of Rottweiler Academy
    I want to add courses to my cart

Background: 
    Given I have browsed to the Rottweiler’s Academy login page
    And I have entered "karol.zerna@ucb.edu.bo" into the email field
    And I have entered "test_2021" into the password field
    When I press the access button
    And I should see my welcome message "Hola Karol" in the main page
    And I click on the Course section that is on the upper left corner of the page
    Then I see the Rottweiler’s Academy full course catalog with "Cursos" title

Scenario: Add a course to my cart 
   
   Given I find the "Como hacer milkshakes" course
   And I click on Como hacer milkshakes
   And I’m able to see the "Ver detalles de Curso" title
   When I click on Apuntame button
   And I should see a new page with the option "Añadir al carrito"
   And click on Añadir al carrito
   Then I should see the cart with a tag that increases in 1

Scenario: See more info about a course in my cart list  
    Given I click on the shopping cart
    And I click on the title Como hacer milkshakes on the list
    Then I should see the page of the course selected with "Como hacer milkshakes" title
    And information about "1.00Bs." price
    And information about "Obtén acceso ilimitado a este curso completo!" on description

@prueba
Scenario: See the total price of courses
    Given I click on the shopping cart
    Then I can see the subtotal amount to pay for all the courses in the list 

Scenario: Remove a course from my cart
    Given I click on the shopping cart
    Then I should see a the "Como hacer milkshakes" course that I have ordered already
    When I click on the ‘x’ icon that is next to the course previously selected
    Then I wait for the course to be removed from the cart
    Then I click on the cart icon 
    And I should’n see courses but I can see a message "No hay productos en el carrito."


Scenario:  Check my previous orders
   Given I find the "Como hacer milkshakes" course
   And I click on Como hacer milkshakes
   And I’m able to see the "Ver detalles de Curso" title
   When I click on Apuntame button
   And I should see a new page with the option "Añadir al carrito"
   And click on Añadir al carrito
   Then I should see the cart with a tag that increases in 1
   And I click on "Karol" button that is on the upper right corner of the page
   And I click on Logout
   Then I should see a new page with the option "Iniciar sesión"
   And I clcik on Iniciar sesion 
   And I have entered "karol.zerna@ucb.edu.bo" into the email field
    And I have entered "test_2021" into the password field
    When I press the access button
   Then I should see the cart with a tag that increases in 1

