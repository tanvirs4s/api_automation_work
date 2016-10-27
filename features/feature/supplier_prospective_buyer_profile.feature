Feature: Prospective Buyer Profile
  As a Supplier
  If i click on any buyer in my prospective buyer list
  I am able to see the buyer details information

  Scenario: Buyer details for prospective buyer
    When I hit the API "http://staging.source4style.com/api/v3/supplier/buyers" with prospective "Buyer_Id"
    Then I am able to see the prospective buyer details information