
Feature: Adopting puppies

  Background:
    Given I am on the puppy adoption site


  Scenario Outline: Adopting one puppy
    When I select puppy from <puppy_list>
    And add the puppy to the shopping cart
    And I proceed to the checkout
    And enter "<name>" in the name field
    And enter "<address>" in the address field
    And enter "<email>" in the email field
    And select "<pay_type>" from the pay type
    And I click the Place Order button
    Then I should see the text  "Thank you for adopting a puppy!"

  Examples:
    |puppy_list| name   | address            | email              | pay_type       |
     |Brook  | Pradeep| 123 Main           | pradeep@example.com | Credit card    |
      |Hanna | Sreedhar | 555 Easy Money     | sreedhar@example.com | Purchase order |
       |Maggie Mae |  Anitha | 777 Capital One Dr | Anitha@example.com | Check          |



  Scenario: Validate the shopping cart with one puppy
    When I select puppy "Brook"
    #And add the puppy to the shopping cart
    Then I should have "Brook" for the name of line item  one
    And I should have "$34.95" for the subtotal of line item 1
    And I should have "34.95" for the cart total

  Scenario: Thank you message should display after an adoption
    When I select puppy and add to shopping cart and checkout
    Then I should see "Thank you for adopting a puppy"

  Scenario: Name is blank
    When I checkout with an empty name
    Then I should see the error message Name can't be blank