Feature: User can log in

As a user
In order to access my account
I would like to be able log in

    Background:
        Given I am on the login page

Scenario: Successfully creates a login
        When I fill in "Email" with "User1@mail.com"
        And I fill in "Password" with "Password"
        And I click on "Login"
        Then I should be on the landing page
        And I should see "Logout"