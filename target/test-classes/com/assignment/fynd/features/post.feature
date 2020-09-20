Feature: To Create new record in database
  @Positive
  Scenario: To ADD employee details
    Given url 'http://dummy.restapiexample.com/api/v1/create'
    * def bodyOfRequest = read('classpath:createDataFile.json')
    Given request bodyOfRequest
    When method POST
    Then assert responseStatus == 200 || responseStatus == 201 || responseStatus == 429

  @Negative
  Scenario: Add employee should fail if incorrect url is passed
    Given url  'http://dummy.restapiexample.com/api/v1/create3'
    * def bodyOfRequest = read('classpath:createDataFile.json')
    Given request bodyOfRequest
    When method POST
    Then assert responseStatus == 404 || responseStatus == 429 || responseStatus == 405