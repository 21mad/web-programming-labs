def calc(x)
    a = 1 - (1 + Math.sin(x).abs)**0.5
    b = 2 + Math.cos(x)**2
    return a / b
end
