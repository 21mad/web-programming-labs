# frozen_string_literal: true

# the Board class
class Board
  # @length
  # @width
  attr_reader :length, :width

  def initialize(length, width)
    @length = length
    @width = width
  end

  def area
    length * width
  end
end

# the Box class
class Box < Board
  # @height
  attr_reader :height

  def initialize(length, width, height)
    super(length, width)
    @height = height
  end

  def volume
    area * height
  end
end
