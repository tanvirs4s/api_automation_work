Feature: Share Supplier Collection in Message Thread
  As a Logged in Supplier
  I want to share my collection with my buyer

Scenario: Share Collection in Message Thread API
  When I hit the Message api "http://staging.source4style.com/api/v3/messages" with "Collection Id"
  Then I am able to share my collection to buyer