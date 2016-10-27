When(/^I hit the create message api "([^"]*)" with "([^"]*)", "([^"]*)", "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3, arg4, arg5|
  token ||= FactoryHelper.token
  @response = S4sClient.post('/api/v3/messages.json?_keys=_,subject,message,is_read,from(f),f.id,f.full_name,f.email,f.current_relation,f.avatar,to(t),t.id,t.full_name,t.email,t.current_relation,t.avatar', headers: {'AUTHORIZATION-TOKEN' => token},body:{receiver_id:'18660',subject:"This is a test message",message:"This is the body of the test message"})
  status_code = @response.response.code
  expect(status_code).to be == '200'
  message_id = @response['id']
  expect(message_id).not_to be_nil

end

Then(/^I am able to the message with receiver name$/) do
  ap @response

end