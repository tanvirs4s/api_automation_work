Feature: Share materials in message
  As a Logged in Supplier
  I want to share my materials when i send a message to my buyer

Scenario: Share Material in Message API
  When I hit the Message api "ttp://staging.source4style.com/api/v3/messages" with "Receiver ID", "Sender ID", "Subject", "Messages" and "Material Id"
  Then I am able to send the buyer my material
