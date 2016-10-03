Feature: Supplier wise Message Inbox
  As a supplier
  I want to see the message inbox

  Scenario: Message Inbox API
    When I hit the message inbox api "http://staging.source4style.com/api/v3/messages/inbox"
    Then I am able to see all the message in supplier inbox