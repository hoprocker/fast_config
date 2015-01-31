#require 'simple_config' # do this if using the gem
require_relative "../lib/simple_config"  # this is just for this test.

class Sample
  extend SimpleConfig
  
  def self.setting_plus_1(setting_name)
    return settings[setting_name] + 1
  end
  
end
