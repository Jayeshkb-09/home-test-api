Feature: Home API Test

Background:
  * url baseUrl 
  

Scenario: Filter By ID
  Given path '/inventory/filter'
  And param id = 3
  When method GET
  Then status 200
  And print response
  And assert response.id == 3
  
