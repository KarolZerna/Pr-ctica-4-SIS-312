Feature: Shopping Cart
    In order to learn new skills
    As someone interested about virtual courses of Rottweiler Academy
    I want to add courses to my cart

Background:
    Given I have browsed to the Rottweiler’s Academy course page
    Then I see the Rottweiler’s Academy full course catalog with "Cursos" title

Scenario: Add a course to my cart
    Given I find the "Como hacer milkshakes" course
    And I click on it
    And I’m able to see the description of the course
    And I click on the “sign up” button
    Then I should see a new page with the option “add to cart”
    And click on it
    And now I should see the cart with a red tag that increases in 1

Scenario: Check my products
    Given I have one or more products in my cart that is shown with a red tag with the current product quantity
    When I click on the cart icon which is in the upper right corner  of the page
    Then I should see a drop down list with the courses I have ordered already

Scenario: Remove a course from my cart
    Given I click on the cart icon
    And I see the “Como hacer milkshakes” course on the cart list 
    And I click on the ‘x’ icon that is next to the course
    Then I should see the cart with a red tag that decreases in 1
    And I shouldn’t see the “Como hacer milkshakes” course on the cart list anymore.


