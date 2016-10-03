When(/^I hit the Prospective Buyer API "([^"]*)"$/) do |arg1|
  token ||= FactoryHelper.token
  @response = S4sClient.get('/api/v3/supplier/buyers/prospective.json',query: {_keys:'_,full_name,user(u),u.email'}, headers: {'AUTHORIZATION-TOKEN' => token})
  status = @response.response.code
  expect(status).to be == '200'

end

Then(/^I should able to see the Prospective buyer List$/) do
  ap @response

end