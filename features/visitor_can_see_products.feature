Feature: User can navigate the site
  As a visitor,
  In order to get an overview of the restaurant's products
  I would like to be able to see a menu

  Background: 
    Given I am on the landing page

  Scenario: Can see different products
    Then I should see "Greta's Top Picks"
    And I should see "Starter 1"
    And I should see "Main course 1"
    And I should see "Dessert 1"






