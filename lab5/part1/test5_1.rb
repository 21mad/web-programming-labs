# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main5_1.rb'

# MiniTest
class TestLab51 < MiniTest::Test
  def test_return_correct_value1
    assert_equal(-0.1340794172991425, calc(4))
  end

  def test_return_correct_value2
    assert_equal(0, calc(0))
  end

  def test_return_correct_value3
    assert_equal(-0.022896053297196673, calc(3))
  end

  def test_return_correct_value4
    assert_equal(-0.15576768616456027, calc(-1))
  end
end
