Feature: User can sign up

  As a user,
  In order to be able to finalize an order
  I would like to be able to register an account

    Background:
        Given I am on the signup page

Scenario: Successfully creates an account
        When I fill in "Email" with "User1@mail.com"
        And I fill in "Password" with "Password"
        And I fill in "Password confirmation" with "Password"
        And I click on "Sign up"
        Then I should be on the landing page
        And I should see "Logout"