Feature: Existing Buyer Search
  As a Logged in Supplier
  I want to search a specific existing buyer

  Scenario: Searching Existing Buyer
    When I hit the Existing Buyer API "http://staging.source4style.com/api/v3/supplier/buyers" and search for a Specific buyer
    Then I should able to see that specific Existing buyer