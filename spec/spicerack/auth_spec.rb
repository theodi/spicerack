require 'spec_helper'

module Spicerack
  describe Spicerack do
    it "should get an auth token" do
      expect(Spicerack.auth_token).to match(/^[0-9a-f]{32}$/)
    end
  end
end
