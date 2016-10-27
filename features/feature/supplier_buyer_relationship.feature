Feature: Supplier Buyer Relationship
  As a Supplier
  If I want to see relationship with the supplier

  Scenario: Buyer relationship with supplier
    When I hit the API "http://staging.source4style.com:8081/api/v3/supplier/buyers/search"
    Then I am able to see the my buyer list with relationship status