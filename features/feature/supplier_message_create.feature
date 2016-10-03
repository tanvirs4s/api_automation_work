Feature: Create Message API
  As a Supplier
  I want to send my buyer message
  So that I can communicate with that Buyer

Scenario: Supplier send a message to buyer
  When I hit the create message api "http://staging.source4style.com/api/v3/messages" with "Receiver ID", "Sender ID", "Subject" and "Messages"
  Then I am able to the message with receiver name