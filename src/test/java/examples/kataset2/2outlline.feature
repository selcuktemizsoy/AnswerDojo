Feature: outline example


  Scenario Outline: outline print
    * print '<username>'
    Examples:
    |username|
    |name1   |
    |name2   |


  Scenario Outline: example table id
    Given url baseUrl
    And path 'pet', id
    When method GET
    Then status 200
    Examples:
      | id  |
      | 250 |
      | 251 |

   Scenario Outline: read csv file
     Given url baseUrl
     And path 'pet', id
     When method GET
     Then status 200
     Examples:
     |read('data/data.csv')|

