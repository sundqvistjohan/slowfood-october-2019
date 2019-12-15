Feature: Visitor can review his order
  As a visitor,
  In order to see my full order and a total price
  I would like be able to see a list on an order details page

  Background:
    Given the following products exist:
      | category | name          | description   | price |
      | Starter  | Starter 1     | First course  | 99    |
      | Main     | Main Course 1 | Second course | 150   |
      | Dessert  | Dessert 1     | Last course   | 39    |

    And the following users exist
      | email               | password |
      | hungry_guy@mail.com | password |

    And I'm logged in as "hungry_guy@mail.com"

    And the following product has been added to order
      | name      |
      | Starter 1 |  

    And I am on the landing page

  Scenario: Visitor can review his order
    When I click on "Your order contains 1 item"
    Then I should see "Starter 1"
    And I should see "Total Price:"
    And I should see "99"
    