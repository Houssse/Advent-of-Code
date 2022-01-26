def curs(input)
  input
    .split #разделение на отдельные обьекты в массиве [a b c d] -> ['a', 'b', 'c', 'd']
    .each_slice(2) #групировка внутри масивва на массивы с 2 обьктами ['a', 'b', 'c', 'd'] -> [['a', 'b'], ['c', 'd']]
    .group_by(&:first) #групировка в хеши с ключом 1 именни в массиве [['a', 'b'], ['c', 'd']] -> #=> {a=> [a, b], c=> [c, d]}
    .transform_values do |x|
       x.map do |s|
         s.last.to_i #последний обьект в массиве переводим в integer
       end.sum #сумма в каждом ключе
      end.then { |s| (s['forward'] * (s['down'] - s['up']) ) } 
end

#irb  input.split.each_slice(2).group_by(&:first).transform_values { |x| x.map{ |i| i.last.to_i }.sum }.then { |s| (s['forward'] * (s['down'] - s['up']) ) }

puts curs File.read('input.txt')