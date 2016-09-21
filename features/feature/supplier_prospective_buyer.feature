Feature: Prospective Buyer List
  As a Logged in Supplier
  I want to see my Prospective buyer List

  Scenario: Showing Prospective Buyer List
    When I hit the Prospective Buyer API "http://staging.source4style.com/api/v3/supplier/buyers/prospective"
    Then I should able to see the Prospective buyer List