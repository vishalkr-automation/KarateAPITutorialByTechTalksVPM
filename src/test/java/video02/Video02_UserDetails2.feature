Feature: User Details

Scenario: Validate JSON response using external JSON file

Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200
And print response
* def expectedOutput = read('Result.json')
* print expectedOutput
And match response == expectedOutput
And match response.data.id == 2