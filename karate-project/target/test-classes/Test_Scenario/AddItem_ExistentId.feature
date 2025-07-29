Feature: Home API Test

Background:
  * url baseUrl
  * def request_body = read('classpath:testData/addItem_Existent.json')

Scenario: Add item for existent id
  Given path '/inventory/add'
  And request request_body
  When method POST
  Then status 400
  And karate.log(response)
  And assert responseStatus == 400
