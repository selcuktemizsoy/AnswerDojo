Feature: call another file

  Scenario: call post
    Given def obj = call read('classpath:examples/kataset2/1post.feature')
    Then match obj.responseStatus == 200


  Scenario: call get with id
    * def obj = call read('classpath:examples/kataset3/callerget.feature') {id : 250}
    Then match obj.response.id == 250