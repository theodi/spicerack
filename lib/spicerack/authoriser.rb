module Spicerack
  class Authoriser
    include Singleton

    attr_reader :token

    def initialize
      Dotenv.load
      @config = Config.instance.config

      payload = {
        auth: {
          'RAX-KSKEY:apiKeyCredentials' => {
            username: ENV['RACKSPACE_USERNAME'],
            apiKey: ENV['RACKSPACE_API_KEY']
          }
        }
      }.to_json

      auth_url = @config.auth_url
      headers = {
        'Content-type' => 'application/json',
        'Accept' => 'application/json'
      }

      response = HTTParty.post auth_url, headers: headers, body: payload

      j = JSON.parse response.body
      @token = j["access"]["token"]["id"]
    end
  end
end
