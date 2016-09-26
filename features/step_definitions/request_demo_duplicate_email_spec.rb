When(/^I hit demo request api "([^"]*)" with "([^"]*)", duplicate "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7|
  @email ||= FactoryHelper.email
  @response = S4sClient.post('/api/v3/demo_request.json', headers: {'CLIENT-TOKEN' => '7bab7dcc5ed17f88b681d16153f2cdbf459deb1cc11c'}, body: {name: 'Tanvir Ahmed', email: @email, company: "Le Souk Demo Request", industry: "Fashion", country_id: "120", phone: "12345678765" })
  @response_duplicate = S4sClient.post('/api/v3/demo_request.json', headers: {'CLIENT-TOKEN' => '7bab7dcc5ed17f88b681d16153f2cdbf459deb1cc11c'}, body: {name: 'Tanvir Ahmed', email: @email, company: "Le Souk Demo Request", industry: "Fashion", country_id: "120", phone: "12345678765" })
  @status = @response_duplicate.response.code
  expect(@status).to be == '400'

end

Then(/^I am able to see correct error message$/) do
  ap @response_duplicate

end