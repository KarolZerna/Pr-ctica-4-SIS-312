Feature: Social Media

In order to interact with Rottweiler Academy’s social media
As a user of Rottweiler Academy
I want to visit their fanpage

Background:
    Given I have browsed to the Rottweiler’s Academy course page
    And I see the Rottweiler’s Academy full course catalog with "Cursos" title

Scenario: Visit Rottweiler Academy’s Facebook fanpage
    Given I scroll down to the end of the page
    When I click the Facebook icon at the bottom right corner
    Then I should visit Rottweiler Academy’s Facebook fanpage
