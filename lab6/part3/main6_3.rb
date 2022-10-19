# frozen_string_literal: true

class Task
  def differ(x, h)
    dy0 = (4 * (yield x) - (yield x + h) - 3 * (yield x - h)) / 2 * h
    dy1 = ((yield x + h) - (yield x - h)) / 2 * h
    dy2 = ((yield x - h) + 4 * (yield x) + 3 * (yield x + h)) / 2 * h
    [dy0, dy1, dy2]
  end

  def differ_func(x, h, func)
    dy0 = (4 * func.call(x) - func.call(x + h) - 3 * func.call(x - h)) / 2 * h
    dy1 = (func.call(x + h) - func.call(x - h)) / 2 * h
    dy2 = (func.call(x - h) + 4 * func.call(x) + 3 * func.call(x + h)) / 2 * h
    [dy0, dy1, dy2]
  end
end
