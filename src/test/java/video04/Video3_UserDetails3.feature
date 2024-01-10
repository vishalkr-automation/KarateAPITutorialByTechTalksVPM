@ignore
Feature: User Details 3

Scenario: Request User 2 details
Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200
And print response

Scenario: Request User 3 details
Given url 'https://reqres.in/api/users/3'
When method GET
Then status 200
And print response


