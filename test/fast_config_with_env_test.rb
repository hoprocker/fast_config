require 'minitest/autorun'
ENV['ENV'] = "test"
require_relative "sample_env.rb"

class FastConfigWithENVTest < MiniTest::Unit::TestCase
#  def setup
#  end
#
#  def teardown
#  end

  def test_settings_read_from_config
    assert_equal SampleEnv.settings[:alpha], 33
  end
  
  def test_settings_readable_in_class
    assert_equal SampleEnv.setting_plus_1(:alpha), 34
  end
  
  def test_settings_createable
    assert_equal SampleEnv.settings[:omega], nil
    SampleEnv.settings[:omega] = "Big Bad Wolf"
    assert_equal SampleEnv.settings[:omega], "Big Bad Wolf"
  end
end
