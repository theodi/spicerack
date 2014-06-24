require 'spec_helper'

module Spicerack
  describe Authoriser do
    it 'should get an auth token', :vcr do
      expect(Authoriser.instance.access.token['id']).to match(/^[0-9a-f]{32}$/)
    end

    it 'should have a list of services', :vcr do
      expect(Authoriser.instance.access.serviceCatalog.first).to be_instance_of(Hash)
    end
  end
end
