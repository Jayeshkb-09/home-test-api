Feature: Home API Test

Background:
  * url baseUrl
  * def request_body = read('classpath:testData/addItem_New.json')

Scenario: Add item with missing id
  # Simulating missing id
  * remove request_body.id  
  Given path '/inventory/add'
  When method POST
  Then status 400
  And karate.log(response)
  * match  response contains 'Not all requirements are met'
Scenario: Add item with missing name
  # Simulating missing name
  * remove request_bodyname  
  Given path '/inventory/add'
  When method POST
  Then status 400
  And print response
  * match response contains 'Not all requirements are met'

Scenario: Add item with missing price
  # Simulating missing price
  * remove request_bodyprice  
  Given path '/inventory/add'
  When method POST
  Then status 400
  And print response
  * match response contains 'Not all requirements are met'
Scenario: Add item with missing image
  # Simulating missing image
  * remove request_bodyimage
  Given path '/inventory/add'    
  When method POST
  Then status 400
  And print response
  * match response contains 'Not all requirements are met'
  
  
  
