Feature: Home API Test

Background:
  * url baseUrl
  * def request_body = read('classpath:testData/addItem_New.json')

Scenario: Add item for non existent id
  Given path '/inventory/add'
  And request request_body
  When method POST
  Then status 200
  And karate.log(response)
  And assert responseStatus == 200
