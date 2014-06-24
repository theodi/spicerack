module Spicerack
  class Service
    def initialize data
      @data = data
    end

    def [] key
      @data[key]
    end
  end
end
