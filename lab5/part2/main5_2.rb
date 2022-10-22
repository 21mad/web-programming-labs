# frozen_string_literal: true

def correct(str)
  test = ''
  res = false
  str.each_char do |ch|
    test += ch if ch.match?(/[0-9a-z]/)
  end
  test
end

def palindrom?(str)
  ans = false
  ans = true if correct(str) == correct(str.reverse)
  ans
end
