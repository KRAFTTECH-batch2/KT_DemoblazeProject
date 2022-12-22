Feature: Login Test- The user should be able to login with valid credentials

  Background: Go to home page login
    Given The user is on the login page

  @loginWithoutParameters
  Scenario: Positive Scenario 1 - user should be able to login
    When The user enters valid credentials
    Then verify "Welcome ktb2"

  @loginWithParameters
  Scenario: Positive Scenario 2 - user should be able to login
    When The user enters "ktb2" and "Test1234" and click login button
    Then verify "Welcome ktb2"

  @loginWithScenarioOutline
  Scenario Outline: Positive Scenario 3 - user should be able to login
    When The user enters "<username>" and "<password>" and click login button
    Then verify "<welcomeUser>"

    Examples:
      | username | password | welcomeUser  |
      | ktb2     | Test1234 | Welcome ktb2 |

  @loginWithDataTableAndScenarioOutline
  Scenario Outline: Positive Scenario 4 - user should be able to login
    When The user enters valid username and password
      | username | <user>     |
      | password | <password> |
    Then verify "<welcomeUser>"

    Examples:
      | user         | password | welcomeUser          |
      | ktb2         | Test1234 | Welcome ktb2         |
      | KayitOlArtik | 123456AA | Welcome KayitOlArtik |