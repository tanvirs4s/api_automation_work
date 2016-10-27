When(/^I hit the API "([^"]*)" with "([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  token ||= FactoryHelper.token
  response = S4sClient.get('/api/v3/supplier/buyers.json',query: {_keys:'_,full_name,user(u),u.email'}, headers: {'AUTHORIZATION-TOKEN' => token},)
  status = response.response.code
  expect(status).to be == '200'
  buyer_id = response['data'].map {|buyer| buyer['id']}.sample
  ap buyer_id
  response_profile = S4sClient.get("/api/v3/supplier/buyers/#{buyer_id}.json",query: {_keys:'_,full_name,email,company_username,company_description,profile_avatar'}, headers: {'AUTHORIZATION-TOKEN' => token},)
  ap response_profile
  @response_recent_order = S4sClient.get("/api/v3/supplier/buyers/#{buyer_id}/recent_orders.json",query: {_keys:'_,sku,sku_with_name,name,images,quantity,order_url,order_type'}, headers: {'AUTHORIZATION-TOKEN' => token},)
  status_recent_order = @response_recent_order.response.code
  expect(status_recent_order).to be == '200'

end

Then(/^I am able to see the recent order information$/) do
  ap @response_recent_order

end