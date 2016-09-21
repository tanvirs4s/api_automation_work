When(/^I hit the add buyer api "([^"]*)" with "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)" And "([^"]*)"$/) do |arg1, arg2, arg3, arg4, arg5, arg6|
  @email ||= FactoryHelper.email
  @token = '8fb8d9e7-34cb-40fa-a7a8-e4ffe8b27717'
  @response = S4sClient.post('/api/v3/supplier/buyers.json', headers: {'AUTHORIZATION-TOKEN' => @token}, body:{first_name:"Golam", last_name:"Rabbi", email:@email,customer_attributes:{company:"Test Company", phone: "1234567890"}})
  @buyer_id=@response['id']
  ap @response

  expect(@buyer_id).not_to be_nil
end

Then(/^Buyer should be created and visible in Existing buyer List$/) do
  @response_existing_buyer = S4sClient.get('/api/v3/supplier/buyers.json',query: {_keys:'_,full_name,user(u),u.email'}, headers: {'AUTHORIZATION-TOKEN' => @token},)
  ap @response_existing_buyer

  expect(@response_existing_buyer['data'].collect {|data| data['id']}).to include @buyer_id
end
