# frozen_string_literal: true

class Task
  attr_reader :iter_count

  def initialize
    @iter_count = 0
    @real = 1 / 18.0
  end

  def calculate(eee)
    k = 1
    summ = elem(k)
    while (summ - @real).abs <= eee
      summ += elem(k)
      k += 1
    end
    @iter_count = k
    summ
  end

  private

  def elem(k)
    p 1.0 / (k * (k + 1) * (k + 2) * (k + 3))
  end
end
