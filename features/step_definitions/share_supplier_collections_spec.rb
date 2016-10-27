When(/^I hit the share Collection api "([^"]*)" with buyer "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  @token ||= FactoryHelper.token
  @response_single = S4sClient.post('/api/v3/supplier/collections/share.json', headers: {'AUTHORIZATION-TOKEN' => @token}, body:{'user_ids[]':'', 'collection_ids[]':''})
end

Then(/^I will be able see the response code "([^"]*)"$/) do |arg1|
  status = @response_single.response.code

  ap status

  ap @response_single
end

When(/^I hit the share Collection api "([^"]*)" with multiple buyer "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  @token ||= FactoryHelper.token
  @response_multiple = S4sClient.post('/api/v3/supplier/collections/share.json', headers: {'AUTHORIZATION-TOKEN' => @token}, body:{'user_ids[]':'','user_ids[]':'', 'collection_ids[]':'','collection_ids[]':''})

end

Then(/^I will be able see the response code "([^"]*)" again$/) do |arg1|
  status = @response_multiple.response.code

  ap status

  ap @response_multiple

end

