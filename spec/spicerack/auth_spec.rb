require 'spec_helper'

module Spicerack
  describe Authoriser do
    it "should get an auth token" do
      expect(Authoriser.instance.access["token"]["id"]).to match(/^[0-9a-f]{32}$/)
    end
  end
end
