Feature: Request a Demo Api
  As a User
  I want to Request a demo
  So I can add a Supplier demo

Scenario: Demo Request for Prospective Supplier
  When I hit demo request api "http://staging.source4style.com/api/v3/demo_request" with "Name","Email Address", "Company Name", "Industry", "Country" and "Phone Nmber"
  Then I am able to see the response status code