input = File.read('input.txt')

input
  .each_line
  .sum {
        blue  = _1.scan(/(\d+) b/).flatten.map(&:to_i).max
        red   = _1.scan(/(\d+) r/).flatten.map(&:to_i).max
        green = _1.scan(/(\d+) g/).flatten.map(&:to_i).max
    
        blue * red * green
   
    }
  .tap {puts _1}