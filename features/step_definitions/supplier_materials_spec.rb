When(/^I hit the Material list api "([^"]*)"$/) do |arg1|
  token ||= FactoryHelper.token
  @response = S4sClient.get('/api/v3/supplier/materials.json',query: {_keys:'_,name,sku,product_type'}, headers: {'AUTHORIZATION-TOKEN' => token})
  status = @response.response.code
  expect(status).to be == '200'

end

Then(/^I will be able to see the material list$/) do
  ap @response
end