When(/^I hit demo request api "([^"]*)" with "([^"]*)","([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7|

  @email ||= FactoryHelper.email
  @response = S4sClient.post('/api/v3/demo_request.json', headers: {'CLIENT-TOKEN' => '7bab7dcc5ed17f88b681d16153f2cdbf459deb1cc11c'}, body: {name: 'Tanvir Ahmed', email: @email, company: "Le Souk Demo Request", industry: "Fashion", country_id: "120", phone: "12345678765" })

  @status = @response.response.code
  expect(@status).to be == '200'

  demo_request_id = @response['source']['id']
  expect(demo_request_id).not_to be_nil

end

Then(/^I am able to see the response status code$/) do

  ap @status

  ap @response
end