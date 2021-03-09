Feature: delete

  Scenario: delete
    Given url baseUrl
    And path 'pet', petId
    When method DELETE
    Then status 200
    And match response.message == '250'