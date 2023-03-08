@GovTech
Feature: Test Login Functionality

@LoginSuccess
  Scenario Outline: Success Login with Correct Credential
    Given The user on the login page
    When The user enter valid <username>
    
        | username                |
        | standard_user           |
        | locked_out_user         |
        | problem_user            |
        | performance_glitch_user | 
    
    Then The user enter valid password  
    And The user click the login button
    Then The user should be direct to the inventory page and see list of products

@LoginFailed
  Scenario: Login Failed with Incorrect Credential
    Given The user on the login page
     When The user enter invalid <username1>
    
        | username1                |
        | standard_user1           |
        | locked_out_user1         |
        | problem_user1            |
        | performance_glitch_user1 | 
    Then The user enter invalid password
    And The user click the login button
    Then The user should see an error message