Feature: Add buyer for Supplier
  As a Supplier
  I want to add buyer
  So I can see them in my existing buyer list

Scenario: Add buyer and show in Existing buyer list
  When I hit the add buyer api "http://staging.source4style.com/api/v3/supplier/buyers" with "First Name", "Last Name", "Company Name", "Email Address" And "Phone Number"
  Then Buyer should be created and visible in Existing buyer List

