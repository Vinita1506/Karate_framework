Feature: To delete an employee record
  @Positive
  Scenario: To DELETE an employee record
    Given url 'http://dummy.restapiexample.com/api/v1/delete/2'
    When method DELETE
    Then assert responseStatus == 200 || responseStatus == 429

  @Negative
  Scenario: When id is not provided in URL for delete request it gets error
    Given url 'http://dummy.restapiexample.com/api/v1/delete/'
    When method DELETE
    Then status 404