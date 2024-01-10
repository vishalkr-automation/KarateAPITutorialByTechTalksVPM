Feature: User Details 1

Background: 
* def expectedOutput1 = read('Result1.json')
* def expectedOutput2 = read('Result2.json')

Scenario: Request User 2 details
Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200
And print response
And match response == expectedOutput1

Scenario: Request User 3 details
Given url 'https://reqres.in/api/users/3'
When method GET
Then status 200
And print response
And match response == expectedOutput2

@parallel=false
Scenario: Request User 3 details
Given url 'https://reqres.in/api/users/3'
When method GET
Then status 200
And print response


