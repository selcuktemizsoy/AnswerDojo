Feature: task 1 print

  Scenario: print task hello world
    * print "hello world"

  Scenario: define variables
    * def hello = "hello world from variable"
    * print hello


  Scenario: global
    * print baseUrl
  
  Scenario: json object
    * def object =
    """{
    "name" : "selcuk",
    "number": 1234353
    }"""
    * print object