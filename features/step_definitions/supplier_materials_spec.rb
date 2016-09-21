When(/^I hit the Material list api "([^"]*)"$/) do |arg1|
  token = '8fb8d9e7-34cb-40fa-a7a8-e4ffe8b27717'
  @response = S4sClient.get('/api/v3/supplier/materials.json',query: {_keys:'_,name,sku,product_type'}, headers: {'AUTHORIZATION-TOKEN' => token})
  status = @response.response.code
  expect(status).to be == '200'
end

Then(/^I will be able to see the material list$/) do
  ap @response
end