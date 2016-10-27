Feature: Existing Buyer Profile
  As a Supplier
  If i click on any buyer in my existing buyer list
  I am able to see the buyer details information

Scenario: Buyer details for existing buyer
  When I hit the API "http://staging.source4style.com/api/v3/supplier/buyers" with "Buyer_Id"
  Then I am able to see the buyer details information