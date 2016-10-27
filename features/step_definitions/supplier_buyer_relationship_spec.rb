When(/^I hit the API "([^"]*)"$/) do |arg1|
  token ||= FactoryHelper.token
  @response = S4sClient.get('/api/v3/supplier/buyers.json',query: {_keys:'_,current_relation,full_name,user(u),u.id,u.email'}, headers: {'AUTHORIZATION-TOKEN' => token})
  status = @response.response.code
  ap status
  expect(status).to be == '200'
end

Then(/^I am able to see the my buyer list with relationship status$/) do
  ap @response

end