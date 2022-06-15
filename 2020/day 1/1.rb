input = '1721
979
366
299
675
1456'

i = input.split.map(&:to_i).each_cons(2).to_a.count { |x| x.sum if x == 2020}


p i