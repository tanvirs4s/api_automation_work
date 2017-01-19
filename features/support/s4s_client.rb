require 'httparty'

class S4sClient
  @default_cookies = {}

  include HTTParty

  base_uri 'https://staging.source4style.com/'
  default_options[:verify] = false

end

