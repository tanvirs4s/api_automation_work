When(/^I hit the Collection api "([^"]*)"$/) do |arg1|
  token ||= FactoryHelper.token
  @response = S4sClient.get('/api/v3/supplier/collections.json',query: {_keys:'_,cover_url,title'}, headers: {'AUTHORIZATION-TOKEN' => token})
  status = @response.response.code
  expect(status).to be == '200'

end

Then(/^I will be able to see the material collection list$/) do
  ap @response

end