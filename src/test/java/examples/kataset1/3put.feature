Feature: put feature


  Scenario: put
    Given url baseUrl
    And path "pet"
    And def obj =
    """
    {
    "photoUrls": [
    "string"
  ],
  "name": "doggie",
  "id": 9222968140497345277,
  "category": {
    "name": "new Pet",
    "id": 0
  },
  "tags": [
    {
      "name": "string",
      "id": 0
    }
  ],
  "status": "available"
}
    """
    And set obj.name = 'myName'
    And request obj
    When method PUT
    Then status 200
    And match response == obj
    And print response