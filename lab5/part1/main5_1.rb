# frozen_string_literal: true

def calc(val)
  a = 1 - (1 + Math.sin(val).abs)**0.5
  b = 2 + Math.cos(val)**2
  a / b
end
