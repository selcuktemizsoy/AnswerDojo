Feature: call get with



  Scenario: get with id

    Given url baseUrl
    And path 'pet', id
    When method GET
    Then status 200
