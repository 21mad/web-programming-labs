# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main5_1.rb'

class TestLab5_1 < MiniTest::Test
  def test_return_correct_value
    assert_equal(-0.1340794172991425, calc(4))
  end
end
