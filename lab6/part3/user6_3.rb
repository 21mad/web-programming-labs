# frozen_string_literal: true

require_relative 'main6_3'

puts 'Input x, h: '
input = gets.chomp.split(' ').map(&:to_f)
x = input[0]
h = input[1]
puts "\n sin(x)"
tasker = Task.new
answer_sin = ''
answer_tg = ''
tasker.differ(x, h) { |val| Math.sin(val) }.each { |dy| answer_sin += "#{dy} " }
puts answer_sin
tasker.differ(x, h) { |val| Math.tan(val + 1) }.each { |dy| answer_tg += "#{dy} " }
puts answer_tg
puts "\n tg(x+1)"
my_sin = ->(val) { Math.sin(val) }
my_tg = ->(val) { Math.tan(val + 1) }
answer_sin = ''
answer_tg = ''
tasker.differ_func(x, h, my_sin).each { |dy| answer_sin += "#{dy} " }
puts answer_sin
tasker.differ_func(x, h, my_tg).each { |dy| answer_tg += "#{dy} " }
puts answer_tg
