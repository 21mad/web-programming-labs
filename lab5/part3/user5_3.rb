# frozen_string_literal: true

require_relative 'main5_3.rb'

puts('---String correction---')
puts('Input some strings or <end>: ')

s1 = gets.chomp
s_arr = []
s_arr[0] = s1
i = 0
while s1 != 'end'
  s_arr[i] = s1
  i += 1
  s1 = gets.chomp
end
puts('---Corrected version---')
s_arr.each do |s|
  puts(correct(s))
end
