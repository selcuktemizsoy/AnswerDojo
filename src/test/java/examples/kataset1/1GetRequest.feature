Feature: first get request


@wip
  Scenario: simple get request
    Given url "https://petstore.swagger.io/v2/pet/250"
    When method get
    Then print response

  Scenario: get request and verification
    Given url "https://petstore.swagger.io/v2/pet/250"
    When method GET
    Then status 200
    And match response.id == 250
    And match response.name =='#string'
    And match response.status == '#present'

  Scenario: path params
    Given url baseUrl
    And path "pet", 250
    When method GET
    Then status 200
    And match response.id == 250
    And match responseHeaders['Content-Type'][0] == 'application/jsons'

  Scenario: query params
    Given url baseUrl
    And path "pet", "findByStatus"
    And param status = 'available'
    When method GET
    Then print response

  Scenario: query params verification
    Given url baseUrl
    And path "pet", "findByStatus"
    And param status = 'pending'
    When method GET
    Then status 200
    And match each response contains {'status' : 'pending'}