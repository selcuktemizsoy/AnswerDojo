Feature: print feature


  Scenario: print json
    * def obj = read('classpath:data/data.json')
    * print obj


  Scenario: print json file with set
    * def obj = read('classpath:data/data.json')
    * set obj.name = 'my name'
    * print obj


