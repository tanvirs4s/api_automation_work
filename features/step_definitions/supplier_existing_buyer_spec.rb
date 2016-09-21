When(/^I hit the Existing Buyer API "([^"]*)"$/) do |arg1|
  @token = '8fb8d9e7-34cb-40fa-a7a8-e4ffe8b27717'
  @response = S4sClient.get('/api/v3/supplier/buyers.json',query: {_keys:'_,full_name,user(u),u.email'}, headers: {'AUTHORIZATION-TOKEN' => @token},)
end

Then(/^I should able to see the Existing buyer List$/) do
  ap @response
end