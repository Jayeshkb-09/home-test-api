Feature: Home API Test

Background:
  * url baseUrl
  * def request_body = read('classpath:testData/addItem_Existent.json') 
  

Scenario: Filter By ID
  Given path '/inventory/filter'
  And param id = 1
  When method GET
  Then status 200
  And karate.log(response)
  And assert response.id == 1
  * match  response contains request_body
  
