Feature: My first cucumber feature

# # Scenario Outline: Open the puppies website and adopt brook
#   # When I open puppies website
#    And I click view detail of brook
#    Then I should see "<arg>" button


  Scenario Outline: Open the puppies website and adopt brook and Hanna
    When I open puppies website
    And I click view detail of brook
    And I click on adopt me button
    #And I check the accessories brook "<index1>"
    And I click on Adopt another puppy button
    And I click on view detail of hanna
    And I click on adopt me button
    And I click on Adopt another puppy again
    And i click on View detail of dog
    And I click on adopt me button
    And I check the accessories for brook "<index0>"
    And I check the accessories for Hanna "<index1>"
    And I check the accessories for Maggie"<index2>"
    And I click on complete adoption
    And I enter the payment details "<name>" and "<addr>" and "<email>"and"<check>"
    And I click on place order button
    Then I should see the text "<arg>"
  Examples:
    | name   | addr   | email   | check   | arg   |index0|index1|index2|
    | test | 123 | abc@gmail.com| Check | Thank you for adopting a puppy! |0|1|2|







