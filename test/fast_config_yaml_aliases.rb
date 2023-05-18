require 'minitest/autorun'
require_relative 'sample_alias.rb'

class FastConfigYamlAliasesTest < MiniTest::Unit::TestCase

  def test_read_yaml_with_aliases
    assert_equal "something here", SampleAlias.settings[:randomvalue]
    assert_equal "a key",  SampleAlias.settings[:key1]
    assert_equal "another key",  SampleAlias.settings[:key2]
  end
end
