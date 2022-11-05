# frozen_string_literal: true

def is_perfect?(num)
  summ = 0
  ans = false
  (1...num).each do |i|
    summ += i if (num % i).zero?
  end
  ans = true if (summ == num) && num.positive?
  ans
end

# segments = { length: , segment: }

def get_segments(array)
  result = []
  len = 0
  seg = []
  array.each do |elem|
    if is_perfect?(elem)
      len += 1
      seg.append(elem)
    else
      result.append({ length: len, segment: seg.join(' ') }) if len.positive?
      len = 0
      seg = []
    end
  end
  result.append({ length: len, segment: seg.join(' ') }) if len.positive?
  result
end

#arr = [-1, 21, 6, 28, 0, 8128, -6, 8128, 496, 28, 7, 1, 6, 6]
str = '-1 21 6 28 0 8128 -6 8128 496 28 7 1 6 6'
p arr = str.split(' ').map { |el| el.to_i }
p get_segments(arr)
p max_seg = (get_segments(arr).max_by { |elem| elem[:length] })[:segment]
