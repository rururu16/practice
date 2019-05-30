require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    assert_equal 'RUBY', 'ruby'.upcase
    assert_equal 'Ruby on rails', 'ruby on rails'.capitalize
  end
end
