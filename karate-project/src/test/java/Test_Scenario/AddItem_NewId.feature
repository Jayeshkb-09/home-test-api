Feature: Home API Test

Background:
  * url baseUrl

Scenario: Add item for non existent id
  Given path '/inventory/add'
  And request read('classpath:testData/addItem_New.json')
  When method POST
  Then status 200
  And print response
  And assert responseStatus == 200
