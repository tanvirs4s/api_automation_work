Feature: Supplier Material List
  As a Logged in Supplier
  I want to see my Material List

Scenario: Showing Material List for the Supplier
  When I hit the Material list api "http://staging.source4style.com/api/v3/supplier/materials"
  Then I will be able to see the material list