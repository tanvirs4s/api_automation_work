When(/^I hit the add buyer api "([^"]*)" with "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)" And "([^"]*)"$/) do |arg1, arg2, arg3, arg4, arg5, arg6|
  @email ||= FactoryHelper.email
  @token ||= FactoryHelper.token
  @response = S4sClient.post('/api/v3/supplier/buyers.json?_keys=_,email,full_name,customer(c),c.id',headers: {'AUTHORIZATION-TOKEN' => @token}, body:{first_name:"Golam", last_name:"Rabbi", email:@email,customer_attributes:{company:"Test Company", phone: "1234567890"}})
  @customer_id=@response['customer']['id']
  expect(@customer_id).not_to be_nil
  ap @response

end

Then(/^Buyer should be created and visible in Existing buyer List$/) do
  @response_existing_buyer = S4sClient.get('/api/v3/supplier/buyers.json',query: {_keys:'_,email,full_name'}, headers: {'AUTHORIZATION-TOKEN' => @token},)
  expect(@response_existing_buyer['data'].collect {|data| data['id']}).to include @customer_id
  ap @response_existing_buyer

end
