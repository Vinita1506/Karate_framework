Feature: Get Employees

  @Positive
  Scenario: Get the information of all the employees
    Given url 'http://dummy.restapiexample.com/api/v1/employees'
    When method GET
    Then status 200
    And match responseType == 'json'

  @Negative
  Scenario: If passed incorrect url it should not get response
    Given url 'http://dummy.restapiexample.com/api/v1/xyzssfdf'
    When method GET
    Then status 404

  @Positive
  Scenario: Get the information of single employee
    Given url 'http://dummy.restapiexample.com/api/v1/employee/1'
    When method GET
    Then assert responseStatus == 200

  @Negative
  Scenario: When passed incorrect id it should return the data as null
    Given url 'http://dummy.restapiexample.com/api/v1/employee/*@#'
    When method GET
    Then assert responseStatus == 200 || responseStatus == 429
