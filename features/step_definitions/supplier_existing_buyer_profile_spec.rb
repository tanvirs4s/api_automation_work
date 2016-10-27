When(/^I hit the API "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  token ||= FactoryHelper.token
  response = S4sClient.get('/api/v3/supplier/buyers.json',query: {_keys:'_,full_name,user(u),u.email'}, headers: {'AUTHORIZATION-TOKEN' => token},)
  status = response.response.code
  expect(status).to be == '200'
  buyer_id = response['data'].map {|buyer| buyer['id']}.sample
  ap response
  ap buyer_id
  @response_profile = S4sClient.get("/api/v3/supplier/buyers/#{buyer_id}.json",query: {_keys:'_,full_name,email,basic_location,city,company_username,company_description,minimum_order_quantity,profile_avatar,category_list,end_use_list,purchase_volume'}, headers: {'AUTHORIZATION-TOKEN' => token},)
  status_profile = @response_profile.response.code
  expect(status_profile).to be == '200'

end

Then(/^I am able to see the buyer details information$/) do
  ap @response_profile

end