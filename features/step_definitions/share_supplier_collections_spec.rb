When(/^I hit the share Collection api "([^"]*)" with buyer "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  @token = '8fb8d9e7-34cb-40fa-a7a8-e4ffe8b27717'
  @response_single = S4sClient.post('/api/v3/supplier/collections/share.json', headers: {'AUTHORIZATION-TOKEN' => @token}, body:{'user_ids[]':'19462', 'collection_ids[]':'860'})
end

Then(/^I will be able see the response code "([^"]*)"$/) do |arg1|
  status = @response_single.response.code
  expect(status).to be == '201'
  ap status

  ap @response_single
end

When(/^I hit the share Collection api "([^"]*)" with multiple buyer "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  @token = '8fb8d9e7-34cb-40fa-a7a8-e4ffe8b27717'
  @response_multiple = S4sClient.post('/api/v3/supplier/collections/share.json', headers: {'AUTHORIZATION-TOKEN' => @token}, body:{'user_ids[]':'17690','user_ids[]':'17299', 'collection_ids[]':'860','collection_ids[]':'992'})

end

Then(/^I will be able see the response code "([^"]*)" again$/) do |arg1|
  status = @response_multiple.response.code
  expect(status).to be == '201'
  ap status

  ap @response_multiple

end

