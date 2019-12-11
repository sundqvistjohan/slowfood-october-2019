Feature: User can see products
  As a visitor
  In order to get an overview of the restaurant's products
  I would like to be able to see a menu

  Background:

    Given the following products exist:
      | name          | description   | price |
      | Starter 1     | First course  | 99    |
      | Main Course 1 | Second course | 150   |
      | Dessert 1     | Last course   | 39    |

    And I am on the landing page

  Scenario: Can see different products
    Then I should see "Greta's Top Picks"
    And I should see "Starter 1"
    And I should see "First course"
    And I should see "99"
    And I should see "Main Course 1"
    And I should see "Dessert 1"