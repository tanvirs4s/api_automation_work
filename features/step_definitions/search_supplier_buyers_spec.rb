When(/^I hit the buyer search api "([^"]*)" with specific name$/) do |arg1|
  token ||= FactoryHelper.token
  @response = S4sClient.get('/api/v3/supplier/buyers/search.json',query: {_keys:'_,current_relation,full_name,user(u),u.id,u.email'}, headers: {'AUTHORIZATION-TOKEN' => token})
  status = @response.response.code
  expect(status).to be == '200'
  
end

Then(/^I will be able to see buyer id and name$/) do
  ap @response

end