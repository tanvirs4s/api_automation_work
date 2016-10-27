Feature: Recent Order for Existing Buyer
  As a Supplier
  If I want to see the recent order for my exiting buyer
  So I am able to see the buyer details information

  Scenario: Recent order for existing buyer profile
    When I hit the API "http://staging.source4style.com:8081/api/v3/supplier/buyers/" with "Buyer_Id" and "Recent_Orders"
    Then I am able to see the recent order information