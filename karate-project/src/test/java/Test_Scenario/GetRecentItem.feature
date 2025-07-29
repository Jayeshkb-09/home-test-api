Feature: Home API Test

Background:
  * url baseUrl
  * def request_body = read('classpath:testData/addItem_Existent.json')
  

Scenario: Validate recent added item is present in the inventory
  Given path '/inventory/filter'
  And param id = 1
  When method GET
  Then status 200
  And karate.log(response)
  * match  response contains request_body
  
  