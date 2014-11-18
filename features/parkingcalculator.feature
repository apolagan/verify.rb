Feature: Calculate the parking fee for 3 days
  Scenario Outline: parking fee calculator
  When I open the parking calculator website
  And I select the parking type "<arg>"
  And I enter the entry date and time
  And I enter the leaving date and time
  And I click on the calculate button
#    Then I should see the cost
  Examples:
    |arg|
    |Short-Term Parking|
    |Economy Parking   |
    |Long-Term Surface Parking|
    |Long-Term Garage Parking |
    |Valet Parking            |