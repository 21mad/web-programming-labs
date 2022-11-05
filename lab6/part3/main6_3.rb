# frozen_string_literal: true

# Task class
class Task
  def differ(xxx, hhh)
    dy0 = (4 * (yield xxx) - (yield xxx + hhh) - 3 * (yield xxx - hhh)) / 2 * hhh
    dy1 = ((yield xxx + hhh) - (yield xxx - hhh)) / 2 * hhh
    dy2 = ((yield xxx - hhh) + 4 * (yield xxx) + 3 * (yield xxx + hhh)) / 2 * hhh
    [dy0, dy1, dy2]
  end

  def differ_func(xxx, hhh, func)
    dy0 = (4 * func.call(xxx) - func.call(xxx + hhh) - 3 * func.call(xxx - hhh)) / 2 * hhh
    dy1 = (func.call(xxx + hhh) - func.call(xxx - hhh)) / 2 * hhh
    dy2 = (func.call(xxx - hhh) + 4 * func.call(xxx) + 3 * func.call(xxx + hhh)) / 2 * hhh
    [dy0, dy1, dy2]
  end
end
