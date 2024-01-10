Feature: User Details

Background: 
* def expectedOutput = read('../video3_testData/Result3.json')
# * def FeatureFileCalled = read('Video3_UserDetails4.feature')
# * def result = call FeatureFileCalled
* def result = call read('Video3_UserDetails4.feature')

Scenario: Request User 3 details
Given url 'https://reqres.in/api/users/3'
When method GET
Then status 200
#And print response
And match response == expectedOutput[1]
* def first_name = result.response.data.first_name
Then print 'first_name_value---',  first_name 

