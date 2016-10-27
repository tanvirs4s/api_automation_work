When(/^I hit the message inbox api "([^"]*)"$/) do |arg1|
  token ||= FactoryHelper.token
  @response = S4sClient.get('/api/v3/messages/inbox.json',query: {_keys:'_,buyer_relation_type,channel_id,subject,message,summary_message,sender(s),s.id,s.full_name,s.current_relation,s.email,s.avatar,receiver(r),r.id,r.full_name,r.current_relation,r.email,r.avatar'}, headers: {'AUTHORIZATION-TOKEN' => token},)
  status = @response.response.code
  expect(status).to be == '200'

end

Then(/^I am able to see all the message in supplier inbox$/) do
  ap @response

end