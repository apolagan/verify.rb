
Feature: login to Guru 99 bank
  Scenario Outline: login to the guru 99 bank website
    When I open the guru 99 website
    And I enter the userid"<uid>"
    And I enter the password"<pwd>"
    And I click on login button
    Then I should see the text"<arg>"

    Examples:
      |uid|pwd|arg|
      | mngr5630 | UgYmevy | Guru99 Bank |