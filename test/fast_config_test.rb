require 'minitest/autorun'
ENV['DELTA'] = 'F'
require_relative "sample.rb"

class FastConfigTest < MiniTest::Unit::TestCase
#  def setup
#  end
#
#  def teardown
#  end

  def test_settings_read_from_config
    assert_equal 12, Sample.settings[:alpha]
  end
  
  def test_settings_readable_in_class
    assert_equal 13, Sample.setting_plus_1(:alpha)
  end
  
  def test_settings_createable
    assert_nil Sample.settings[:omega]
    Sample.settings[:omega] = "Little Red Riding Hood"
    assert_equal "Little Red Riding Hood", Sample.settings[:omega]
  end

  def test_settings_changeable
    assert_equal "http://www.example.com", Sample.settings[:gamma]
    Sample.settings[:gamma] = 100
    assert_equal 100, Sample.settings[:gamma]
  end

  def test_erb
    assert_equal "F=mxa", Sample.settings[:delta]
  end
end
