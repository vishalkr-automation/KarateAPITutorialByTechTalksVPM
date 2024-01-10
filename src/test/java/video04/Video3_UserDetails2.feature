Feature: User Details 2

Background: 
* def expectedOutput = read('Result3.json')

* def sleep = 
"""
function(seconds){
for(int i = 0; i <= seconds; i++){

}
}
"""

Scenario: Request User 2 details
Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200
And print response
And match response == expectedOutput[0]

Scenario: Request User 3 details
Given url 'https://reqres.in/api/users/3'
When method GET
Then status 200
And print response
And match response == expectedOutput[1]

