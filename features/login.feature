Feature: Login
    In order to access my account
    As a user of Rottweiler Academy
    I want to see what’s new with Rottweiler’s Academy course catalog

Background:
    Given I have browsed to the Rottweiler’s Academy login page 

Scenario Outline: Valid credentials
    Given I have entered "<e-mail>" into the email field
    And I have entered "<password>" into the password field
    When I press the access button
    Then I should see my user name "<username>" in the main page

Examples:
    | e-mail                      | password  | username |
    | e.daniel.acero.r@gmail.com  | 1         | daniel   |
    | karol.zerna@ucb.edu.bo      | test_2021 | karol    |

# Scenario Outline: Invalid email
#     Given I have entered "<e-mail>" into the email field
#     And I have entered "<password>" into the password field
#     When I press the access button
#     Then I should see an error message that explains that the email doesn't exist

# Examples:
#     | e-mail                    | password  |
#     | edaniel.acero@gmail.com   | 1         |
#     | karol.zerna@gmail.com     | test_2021 | 


# Scenario Outline: Invalid password
#     Given I have entered "<e-mail>" into the email field
#     And I have entered "<password>" into the password field
#     When I press the access button
#     Then I should see an error message that explains that the password is not valid

# Examples:
#     | e-mail                      | password    |
#     | e.daniel.acero.r@gmail.com  | 4527751     |
#     | karol.zerna@ucb.edu.bo      | test1_2021  |

# Scenario Outline: No password
#     Given I have entered "<e-mail>" into the email field
#     And I have left the password field empty
#     When I press the access button
#     Then I should see an error message that explains that the password field is empty

# Examples:
#     | e-mail                        | 
#     | e.daniel.acero.r@gmail.com    | 
#     | karol.zerna@ucb.edu.bo        | 

# Scenario: No email
#     Given I have left the email field empty
#     And I have entered "1" into de password field
#     When I press the access button
#     Then I should see an error message that explains that the email field is empty 

