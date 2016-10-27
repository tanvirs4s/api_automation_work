When(/^I hit the message api "([^"]*)" with message Id$/) do |arg1|
  token ||= FactoryHelper.token
  response = S4sClient.get('/api/v3/messages/inbox.json',query: {_keys:'_,buyer_relation_type'}, headers: {'AUTHORIZATION-TOKEN' => token},)
  message_id = response['messages'].map {|messages| messages['id']}.sample
  ap message_id
  @response_id_wise = S4sClient.get("/api/v3/messages/#{message_id}.json",query: {_keys:'_,buyer_relation_type,channel_id,subject,message,summary_message,sender(s),s.id,s.full_name,s.current_relation,s.email,s.avatar,receiver(r),r.id,r.full_name,r.current_relation,r.email,r.avatar'}, headers: {'AUTHORIZATION-TOKEN' => token},)
  status = @response_id_wise.response.code
  expect(status).to be == '200'

end

Then(/^I am able to see the details of that message$/) do

  ap @response_id_wise
end