require 'spec_helper'

module Spicerack
  describe Service do
    before :each do
      @fake_data = JSON.parse '{
        "name": "cloudServers",
        "endpoints": [
          {
            "tenantId": "6031769",
            "publicURL": "https://lon.servers.api.rackspacecloud.com/v1.0/6031769",
            "versionInfo": "https://lon.servers.api.rackspacecloud.com/v1.0",
            "versionList": "https://lon.servers.api.rackspacecloud.com/",
            "versionId": "1.0"
          }
        ],
        "type": "compute"
      }'
    end

    it 'should have a type of "compute"' do
      @serv = Service.new(@fake_data)
      expect(@serv['type']).to eq('compute')
    end
  end
end
