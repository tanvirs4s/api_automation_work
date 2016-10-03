When(/^I hit the message inbox api "([^"]*)"$/) do |arg1|
  token ||= FactoryHelper.token
  @response = S4sClient.get('/api/v3/messages/inbox.json',query: {_keys:'_,channel_id,subject,message,summary_message'}, headers: {'AUTHORIZATION-TOKEN' => token},)
  status = @response.response.code
  expect(status).to be == '200'

end

Then(/^I am able to see all the message in supplier inbox$/) do
  ap @response

end