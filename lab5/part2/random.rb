p str = [*'0'..'9', *'a'..'z'].sample(10).join
p rand_str = str
4.times { rand_str.insert(rand(0..9), [*'A'..'Z'].sample(1).join) }
p rand_str