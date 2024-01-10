Feature: User Details

Scenario: Validate JSON response using external JSON file

Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200
And print response
* def expectedOutput = read('Result2.json')
* print expectedOutput
And match response == expectedOutput
And match response.data.id == 2
And match response.data.last_name != null
* def job_code = response.data.job_code
And match job_code == null