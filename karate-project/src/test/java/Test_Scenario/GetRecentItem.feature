Feature: Home API Test

Background:
  * url baseUrl
  

Scenario: Validate recent added item is present in the inventory
  Given path '/inventory/filter'
  And param id = 995
  When method GET
  Then status 200
  And print response
  #And assert response.data.length > 0
  * match  response contains
  """
  {
  "id": "995",
  "name": "Dosa",
  "image": "Dosaimage.jpg",
  "price": "$10.99"
  }
  """
  