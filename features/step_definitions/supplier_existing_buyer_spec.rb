When(/^I hit the Existing Buyer API "([^"]*)"$/) do |arg1|
  token ||= FactoryHelper.token
  @response = S4sClient.get('/api/v3/supplier/buyers.json',query: {_keys:'_,full_name,current_relation,user(u),u.email'}, headers: {'AUTHORIZATION-TOKEN' => token},)
  status = @response.response.code
  expect(status).to be == '200'

end

Then(/^I should able to see the Existing buyer List$/) do
  ap @response

end