#require 'fast_config' # do this if using the gem
require_relative "../lib/fast_config"  # this is just for this test.

class SampleEnv
  extend FastConfig
  
  def self.setting_plus_1(setting_name)
    return settings[setting_name] + 1
  end
  
end
