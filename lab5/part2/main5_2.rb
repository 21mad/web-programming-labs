# frozen_string_literal: true

def palindrom?(str)
  test = ''
  res = false
  str.each_char do |ch|
    test += ch if (ch.ord >= 48) && (ch.ord <= 57) || (ch.ord >= 97) && (ch.ord <= 122)
  end
  res = true if test == test.reverse
  if res
    'Yes, ' + test + ' is a palindrom.'
  else
    'No, ' + test + ' is not a palindrom.'
  end
end
