# cucumber_framework

Created an automated test suite to test all the CRUD operations for the API's http://dummy.restapiexample.com/
I have used Karate framework in which CRUD files are created using .feature file under("src/test/java/com/assignment/fynd/features") and exectued Test cases using TestRunner class
Written both Positive and Negative test cases and diffrentiated Test cases using @Positive for Positive scenario and @Negative for Negative Scenarios.
For POST/Update have read the data from .json file("src/test/java/createDataFile.json" , "src/test/java/updateDataFile.json")
For running one particular Test case we can use @tags option (@KarateOptions(tags = {"@Positive"})) and to run entire operation at once we can execute through TestRunner class
Generated test summary report through cucumber and placed under("target/surefire-reports").
