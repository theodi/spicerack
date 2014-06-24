module Spicerack
  class Config
    include Singleton

    def initialize
      @config = OpenStruct.new fetch_yaml 'spicerack'
    end

    def config
      @config
    end

    private

    def fetch_yaml file
      YAML.load(File.open(File.join(File.dirname(__FILE__), '..', '..', 'config/%s.yaml' % file)))
    end
  end
end
