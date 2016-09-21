Feature: Searching buyer for Supplier
  As a Logged in Supplier
  I want search a specific buyer by name

Scenario: Searching buyer by name
  When I hit the buyer search api "http://staging.source4style.com/api/v3/supplier/buyers/search" with specific name
  Then I will be able to see buyer id and name