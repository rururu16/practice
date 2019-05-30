require 'minitest/autorun'
require './lib/2_fizz_buzz'

class FizzBuzzTest < MiniTest::Test
  def test_fizz_buzz
    assert_equal '1', fizz_buzz(1)
    assert_equal '2', fizz_buzz(2)
    assert_equal 'Fizz', fizz_buzz(3)
    assert_equal 'Fizz', fizz_buzz(99)
    assert_equal 'Buzz', fizz_buzz(5)
    assert_equal 'Buzz', fizz_buzz(100_000)
    assert_equal 'Fizz Buzz', fizz_buzz(15)
    assert_equal 'Fizz Buzz', fizz_buzz(165)
  end
end

