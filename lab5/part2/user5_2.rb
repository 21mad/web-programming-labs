# frozen_string_literal: true

require_relative 'main5_2.rb'
puts('Input a string: ')
s1 = gets
puts "Yes, #{correct(s1)} is a palindrom." if palindrom?(s1)
puts "No, #{correct(s1)} is not a palindrom." unless palindrom?(s1)
