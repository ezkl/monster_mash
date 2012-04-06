require File.expand_path(File.dirname(__FILE__) + '/../lib/monster_mash')

require 'multi_json'
require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = File.dirname(__FILE__) + "/fixtures/vcr_cassettes"
  c.hook_into :typhoeus
  c.configure_rspec_metadata!
end

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
end