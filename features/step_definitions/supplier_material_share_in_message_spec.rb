When(/^I hit the Message api "([^"]*)" with "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3, arg4, arg5, arg6|
  @token ||= FactoryHelper.token
  @response = S4sClient.post('/api/v3/messages/share_materials.json?_keys=_,subject,message,is_read,from(f),f.id,f.full_name,f.email,f.current_relation,f.avatar,to(t),t.id,t.full_name,t.email,t.current_relation,t.avatar', headers: {'AUTHORIZATION-TOKEN' => @token},body:{receiver_id:'18660',subject:"This is a test message",message:"This is the body of the test message", 'product_ids':['34710']})
  status_code = @response.response.code
  expect(status_code).to be == '200'
  message_id = @response['id']
  expect(message_id).not_to be_nil
end

Then(/^I am able to send the buyer my material$/) do
  response1 = S4sClient.get('/api/v3/messages/inbox.json?sort_by=created_at&_keys=_,subject,message,is_read', headers: {'AUTHORIZATION-TOKEN' => @token},)
  message_id = response1['messages'].map {|messages| messages['id']}.first
  response_id_wise = S4sClient.get("/api/v3/messages/#{message_id}.json",query: {_keys:'_,subject,message,is_read,from(f),f.id,f.full_name,f.email,f.current_relation,f.avatar,to(t),t.id,t.full_name,t.email,t.current_relation,t.avatar,comments(c),c.id,c.recent_material(m),m.id,m.name,m.image_urls'}, headers: {'AUTHORIZATION-TOKEN' => @token},)
  status = response_id_wise.response.code
  expect(status).to be == '200'
  ap  response_id_wise
end