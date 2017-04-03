require 'minitest/autorun'
require_relative "sample.rb"

class FastConfigWithENVTest < MiniTest::Unit::TestCase
#  def setup
#  end
#
#  def teardown
#  end

  def test_settings_read_from_config
    assert_equal Sample.settings[:alpha], 13
  end
  
  def test_settings_readable_in_class
    assert_equal Sample.setting_plus_1(:alpha), 14
  end
  
  def test_settings_createable
    assert_equal Sample.settings[:omega], nil
    Sample.settings[:omega] = "Little Red Riding Hood"
    assert_equal Sample.settings[:omega], "Little Red Riding Hood"
  end

  def test_settings_changeable
    assert_equal Sample.settings[:gamma], "http://www.sample.com"
    Sample.settings[:gamma] = 100
    assert_equal Sample.settings[:gamma], 100
  end
end
