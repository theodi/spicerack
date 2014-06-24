require 'spec_helper'

module Spicerack
  describe Config do
    it "should have an auth url" do
      expect(Config.instance.config.auth_url).to eq('https://identity.api.rackspacecloud.com/v2.0/tokens')
    end
  end
end
