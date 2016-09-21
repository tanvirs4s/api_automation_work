Feature: Supplier Material Collection List
  As a Logged in Supplier
  I want to see my Material Collection List

Scenario: Material Collection List
  When I hit the Collection api "http://staging.source4style.com/api/v3/supplier/collections"
  Then I will be able to see the material collection list
