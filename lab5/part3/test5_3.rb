require 'minitest/autorun'
require_relative 'main5_3.rb'

class TestLab5_3 < MiniTest::Test
    def test_letter_tis_rue
        assert_equal true, letter?('b')
    end

    def test_letter_is_false
        assert_equal false, letter?('8')
    end

    def test_numeric_is_true
        assert_equal true, numeric?('3')
    end
    
    def test_numeric_is_false
        assert_equal false, numeric?('y')
    end
    
    def test_correct_is_working
        assert_equal 'the _rd String w1th some mistakes     |total corrects: 4', correct('the 3rd *str String w1th s*me some _awrw mistakes !!!')
    end
end
