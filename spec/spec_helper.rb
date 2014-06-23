require 'spicerack'

require_relative 'support/vcr_setup'

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
end
