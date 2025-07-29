Feature: Home API Test

Background:
  * url baseUrl
  

Scenario: Get all menu items
  Given path '/inventory'
  When method GET
  Then status 200
  And print response
  And assert response.data.length >= 9
  * match each response.data contains
  """
  {
  id: '#present',name: '#present',image: '#present',price: '#present'
  }
  """ 
