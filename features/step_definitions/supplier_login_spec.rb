When(/^I hit the signin api "([^"]*)" with valid "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  @response = S4sClient.post('/signin.json', body: {email: 'lesouktest@gmail.com', password: '12341234'})
  user_type = @response['account_type']
  expect(user_type).to be == 'stockroom'

end

Then(/^i am able to see my profile details$/) do

  ap @response

end