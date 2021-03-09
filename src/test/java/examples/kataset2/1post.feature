Feature: post with JSON

  Scenario: post
    Given url baseUrl
    And path 'pet'
    And def obj = read('classpath:data/data.json')
    And set obj.name = 'my name'
    And request obj
    When method POST
    Then status 200
    And match response.id == '#number'
    And match response.name == obj.name
    And match response.status == obj.status