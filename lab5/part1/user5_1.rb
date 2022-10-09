# frozen_string_literal: true

require_relative 'main5_1.rb'
puts('Input value: ')
x = gets.chomp.to_f
puts(calc(x).round(8))
