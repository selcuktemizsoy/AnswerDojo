Feature: post




  Scenario: post with JSON
    Given url baseUrl
    And path 'pet'
    And def obj =
    """
    {
    "category": {
        "id": 0,
        "name": "new Pet"
      },
      "name": "doggie",
      "photoUrls": [
        "string"
      ],
    "tags": [
       {
        "id": 0,
        "name": "string"
       }
     ],
    "status": "available"
    }
    """
    And request obj
    When method POST
    Then status 200
    And print response

