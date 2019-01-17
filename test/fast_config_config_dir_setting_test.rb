require 'minitest/autorun'
require './lib/fast_config'
FastConfig.config_dir = "test/test_config"

require_relative "sample.rb"

class FastConfigDirSettingTest < MiniTest::Unit::TestCase
#  def setup
#  end
#
#  def teardown
#  end

  def test_settings_read_from_config
    assert_equal 13, Sample.settings[:alpha]
  end
  
  def test_settings_readable_in_class
    assert_equal 14, Sample.setting_plus_1(:alpha)
  end
  
  def test_settings_createable
    assert_nil Sample.settings[:omega]
    Sample.settings[:omega] = "Little Red Riding Hood"
    assert_equal "Little Red Riding Hood", Sample.settings[:omega]
  end

  def test_settings_changeable
    assert_equal "http://www.sample.com", Sample.settings[:gamma]
    Sample.settings[:gamma] = 100
    assert_equal 100, Sample.settings[:gamma]
  end
end
