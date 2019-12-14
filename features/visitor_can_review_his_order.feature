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
      | name      | price |
      | Starter 1 | 99    |    

  Scenario: Visitor can add products to cart
    Given I am on the landing page
    And I click on "Your order"
    Then I should see "Starter 1"
    