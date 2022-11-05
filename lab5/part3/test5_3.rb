# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main5_3.rb'

# MiniTest
class TestLab53 < MiniTest::Test
  def test_letter_tis_rue
    a = [*'a'..'z'].sample(1).join
    assert_equal true, letter?(a)
  end

  def test_letter_is_false
    a = [*'0'..'9'].sample(1).join
    assert_equal false, letter?(a)
  end

  def test_numeric_is_true
    a = [*'0'..'9'].sample(1).join
    assert_equal true, numeric?(a)
  end

  def test_numeric_is_false
    a = [*'a'..'z'].sample(1).join
    assert_equal false, numeric?(a)
  end

  def test_correct_is_working
    assert_equal 'the _rd String w1th some mistakes     |total corrects: 5',
                 correct('the 3rd *str String w1th s*me some _awrw mistakes !!!')
  end

  def test_correct_is_working_random
    a = 'word1 ' + [*'0'..'9'].sample(1).join + 'Word2 ' + 'woRd3 ' + 'w' + [*'!'..'/', *':'..'@', *'['..'`', *'{'..'~']
        .sample(2).join + 'ord4'
    assert_equal 'word1 _Word2 woRd3     |total corrects: 2', correct(a)
  end
end
