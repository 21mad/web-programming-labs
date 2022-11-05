# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main5_2.rb'

# MiniTest
class TestLab52 < MiniTest::Test
  def test_correct_func
    str = [*'0'..'9', *'a'..'z'].sample(10).join
    rand_str = str.clone
    4.times { rand_str.insert(rand(0..9), [*'A'..'Z'].sample(1).join) }
    assert_equal str, correct(rand_str)
  end

  def test_palindrom_is_true
    str = [*'0'..'9', *'a'..'z'].sample(10).join
    str += str.reverse
    rand_str = str.clone
    8.times { rand_str.insert(rand(0..9), [*'A'..'Z'].sample(1).join) }
    assert_equal true, palindrom?(rand_str)
  end
end
