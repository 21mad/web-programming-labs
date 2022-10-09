# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main5_2.rb'

class TestLab5_2 < MiniTest::Test
  def test_palindrom_true
    assert_equal 'Yes, d0vn43n22n34nv0d is a palindrom.', palindrom?('dO0vYn4R3nY_2*&2YESnO3_4n_WAYv0d')
  end

  def test_plaindrom_false
    assert_equal 'No, 0a7paltlltlap7ao is not a palindrom.', palindrom?('N0T_a7Ppal^@At_ALl#<=l&JDt(lap)7_-aTEo')
  end
end
