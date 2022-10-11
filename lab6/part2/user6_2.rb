# frozen_string_literal: true

require_relative 'main6_2'

puts('Input the accuracy')
e = gets.chomp.to_f
tasker = Task.new
puts "The result is: #{tasker.calculate(e)}"
puts "Number of iterations: #{tasker.iter_count}"
