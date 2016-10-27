When(/^I hit the Existing Buyer API "([^"]*)" and search for a Specific buyer$/) do |arg1|
  token ||= FactoryHelper.token
  @response = S4sClient.get('/api/v3/supplier/buyers/search.json',query: {_keys:'_,full_name,current_relation,user(u),u.email',buyer:{buyer_name:'Varsha Vydyula'}}, headers: {'AUTHORIZATION-TOKEN' => token},)
  status = @response.response.code
  expect(status).to be == '200'
end

Then(/^I should able to see that specific Existing buyer$/) do
  ap @response

end