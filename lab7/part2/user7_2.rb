# frozen_string_literal: true

require_relative 'main7_2'

board = Board.new(40, 25)
puts 'Board:'
puts "length - #{board.length}, width - #{board.width}, area - #{board.area}."
box = Box.new(40, 25, 50)
puts 'Box:'
puts "length - #{box.length}, width - #{box.width}, height - #{box.height}, area - #{box.area}, volume - #{box.volume}"
