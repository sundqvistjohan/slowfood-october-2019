Feature: User can sign up

  As a user,
  In order to be able to finalize an order
  I would like to be able to register an account

    Background:
        Given I am on the landing page
        And I click on "Signup"

Scenario: Successfully creates an account
        And I fill in "Email" with "User1@mail.com"
        And I fill in "Password" with "User1@mail.com"
        And I fill in "Password confirmation" with "User1@mail.com"
        And I click on "Create"
        Then I should be on the landing page
        And I should see "Welcome! You have signed up successfully."