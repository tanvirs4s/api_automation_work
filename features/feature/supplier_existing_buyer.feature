Feature: Existing Buyer List
  As a Logged in Supplier
  I want to see my Existing buyer List

Scenario: Showing Existing Buyer List
  When I hit the Existing Buyer API "http://staging.source4style.com/api/v3/supplier/buyers"
  Then I should able to see the Existing buyer List