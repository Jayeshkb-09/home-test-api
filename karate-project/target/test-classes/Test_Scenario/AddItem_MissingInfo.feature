Feature: Home API Test

Background:
  * url baseUrl
  * def req = read('classpath:testData/addItem_New.json')

Scenario: Add item with missing id
  Given path '/inventory/add'
  * remove req.id  # Simulating missing id
  When method POST
  Then status 400
  And print response
  * match  response contains 'Not all requirements are met'
Scenario: Add item with missing name
  Given path '/inventory/add'
  * remove req.name  # Simulating missing name
  When method POST
  Then status 400
  And print response
  * match response contains 'Not all requirements are met'

Scenario: Add item with missing price
  Given path '/inventory/add'
  * remove req.price  # Simulating missing price
  When method POST
  Then status 400
  And print response
  * match response contains 'Not all requirements are met'
Scenario: Add item with missing image
  Given path '/inventory/add'   
  * remove req.image  # Simulating missing image
  When method POST
  Then status 400
  And print response
  * match response contains 'Not all requirements are met'
  
  
  
