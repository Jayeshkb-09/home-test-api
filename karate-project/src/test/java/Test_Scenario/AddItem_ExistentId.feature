Feature: Home API Test

Background:
  * url baseUrl

Scenario: Add item for existent id
  Given path '/inventory/add'
  And request read('classpath:testData/addItem_Existent.json')
  When method POST
  Then status 400
  And print response
  And assert responseStatus == 400
