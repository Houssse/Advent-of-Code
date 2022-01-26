i = File.read('input.txt')

p i.split.each_slice(2).group_by(&:first).transform_values { |x| x.map{ |s| s.last.to_i }.sum }.then { |s| (s['forward'] * (s['down'] - s['up']) ) }