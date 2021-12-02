Feature: Shopping Cart with an account
    In order to learn new skills
    As a user of Rottweiler Academy
    I want to add courses to my cart

Background: 
    Given I have browsed to the Rottweiler’s Academy login page
    And I have entered "karol.zerna@ucb.edu.bo" into the email field
    And I have entered "test_2021" into the password field
    When I press the access button
    Then I should see my welcome message "Hola Karol" in the main page

Scenario: Add a course to my cart 
   Given I click on the Course section that is on the upper left corner of the page
   And I see the Rottweiler’s Academy full course catalog with "Cursos" title
   When I find the  “Curso completo de Photoshop desde Cero” course
   And I click on it 
   And I’m able to see the description of the course
   And I click on the “sign up” button
   Then I should see a new page with the option “add to cart”
   And click on it
   And now I should see the cart with a red tag that increases in 1, that means I have one more product in my cart.

Scenario: See more info about a course in my cart list
    Given I click on the “Cursos” section that is on the upper left corner of the page
    And I see the Rottweiler’s Academy full course catalog with "Cursos" title
    And I have one or more products in my that are shown with a red tag with the current product quantity
    When I click on the cart icon which is in the upper right corner of the page
    And  I see a drop down list with the courses I have ordered already
    And I click on the title of the first course on the list
    Then I should see the page of the course selected with an image of the course in the center left of the screen
    And information about the title, price, specifications and category in the middle right of the page
    And the course description below the course image
    And related products below description

Scenario: See the total price of courses
    Given I click on the “Cursos” section that is on the upper left corner of the page
    And I see the Rottweiler’s Academy full course catalog with "Cursos" title
    And I have one or more products in my that are shown with a red tag with the current product quantity
    When I click on the cart icon which is in the upper right corner of the page
    Then I should see a drop down list with the courses I have ordered already
    And the subtotal amount to pay for all the courses in the list

Scenario: Remove a course from my cart
    Given I click on the “Cursos” section that is on the upper left corner of the page
    And I see the Rottweiler’s Academy full course catalog with "Cursos" title
    When I click on the cart icon
    And I see the “Curso completo de Photoshop desde Cero” course on the cart list 
    And I click on the ‘x’ icon that is next to the course
    Then I should see the cart with a red tag that decreases in 1, that means I have one less product in my cart.
    And I shouldn’t see the “Curso completo de Photoshop desde Cero” course on the cart list anymore.

Scenario:  Check my previous orders “Curso completo de Photoshop desde Cero”
    Given I click on the “Cursos” section that is on the upper left corner of the page
    And I see the Rottweiler’s Academy full course catalog with "Cursos" title
    When I find the  “Curso completo de Photoshop desde Cero” course
    And I click on the Curso completo de Photoshop desde Cero course
    And I’m able to see the description of the Curso completo de Photoshop desde Cero course
    And I click on the “sign up” button
    And I see a new page with the option “add to cart”
    And click on it
    And I see the cart with a red tag that increases in 1, that means I have one more product in my cart.
    And I logout the page
    And I login again with my credentials
    Then I should see the cart with a red tag with the number of products I have selected.


