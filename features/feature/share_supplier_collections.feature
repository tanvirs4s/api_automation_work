Feature: Share Supplier Collection
  As a Logged in Supplier
  I want to see my Material Collection List

Scenario: Share single collection to single buyer
  When I hit the share Collection api "http://staging.source4style.com/api/v3/supplier/collections/share" with buyer "id" and "Collection id"
  Then I will be able see the response code "201"

Scenario: Share multiple collection to multiple buyer
  When I hit the share Collection api "http://staging.source4style.com/api/v3/supplier/collections/share" with multiple buyer "id" and "Collection id"
  Then I will be able see the response code "201" again