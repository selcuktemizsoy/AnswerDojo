Feature: conditional logic

  Scenario: cond
    Given url baseUrl
    * def id = 250
    And path 'pet', id
    When method GET
    Then def featureName = (responseStatus == 200) ? 'kataset1/4delete.feature' : 'kataset2/1post.feature'
    And def obj = call read('classpath:examples/'+ featureName)  {petId : '#(id)'}
    And match obj.responseStatus == 200