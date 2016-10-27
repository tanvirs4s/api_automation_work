Feature: ID wise message details
  As a supplier
  I want to see the message details based on message id

  Scenario: ID wise message API
    When I hit the message api "http://staging.source4style.com/api/v3/messages" with message Id
    Then I am able to see the details of that message