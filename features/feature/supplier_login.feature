Feature: Login as Supplier
  As a Supplier
  I want login the application with valid "Email" and "Password"
  So I can see my profile details

  Scenario: Successful Supplier Login
    When I hit the signin api "https://staging.source4style.com/signin" with valid "Email" and "Password"
    Then i am able to see my profile details