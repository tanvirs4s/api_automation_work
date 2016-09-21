require 'httparty'

class S4sClient
  @default_cookies = {}

  include HTTParty

  base_uri 'http://staging.source4style.com:8081'
end
