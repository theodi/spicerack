require 'dotenv'
require 'httparty'

module Spicerack

  def self.auth_token
    Dotenv.load

    payload = {
      auth: {
        'RAX-KSKEY:apiKeyCredentials' => {
          username: ENV['RACKSPACE_USERNAME'],
          apiKey: ENV['RACKSPACE_API_KEY']
        }
      }
    }.to_json

    auth_url = 'https://identity.api.rackspacecloud.com/v2.0/tokens'
    headers = {
      'Content-type' => 'application/json',
      'Accept' => 'application/json'
    }

    response = HTTParty.post(auth_url, headers: headers, body: payload)

    j = JSON.parse response.body
    j["access"]["token"]["id"]
  end
end
