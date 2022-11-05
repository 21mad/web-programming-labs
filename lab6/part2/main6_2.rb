# frozen_string_literal: true

# Task
class Task
  attr_reader :iter_count
  def initialize
    @iter_count = 0
    @real = 1 / 18.0
    @result = 0
  end

  def calculate(eee)
    list = Enumerator.new do |yielder|
      sum = 0
      real = @real
      k = 1
      loop do
        yielder.yield sum, real, k

        sum += 1.0 / (k * (k + 1) * (k + 2) * (k + 3))
        k += 1
        @iter_count = k
      end
    end

    arr = list.take_while { |sum, real| (sum - real).abs >= eee }
    @iter_count = arr.last[2] - 1
    arr.last[0]
  end
end
