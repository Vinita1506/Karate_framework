Feature: To update employee record

  @Positive
  Scenario: To update employee details
    Given url 'http://dummy.restapiexample.com/api/v1/update/21'
    * def bodyOfRequest = read('classpath:updateDataFile.json')
    Given request bodyOfRequest
    When method PUT
    Then assert responseStatus == 200 || responseStatus == 429