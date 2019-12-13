Feature: Visitor can add products to the cart
  As a registered user,
  In order to select products I want to buy
  I would like to be able to add products to an order

  Background:
    Given the following products exist:
      | category | name          | description   | price |
      | starter  | Starter 1     | First course  | 99    |
      | main     | Main Course 1 | Second course | 150   |
      | dessert  | Dessert 1     | Last course   | 39    |

    And the following users exist
      | email               | password |
      | hungry_guy@mail.com | password |

    And I'm logged in as "hungry_guy@mail.com"

  Scenario: Visitor can add products to cart
    Given I am on the landing page
    And I click on "Add"