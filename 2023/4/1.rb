input = File.read('input.txt')

 input.each_line.sum {
 _, winners, numbers = _1.split(/[:|]/)

  winners = winners.scan(/\d+/)
  numbers = numbers.scan(/\d+/)

  mantches = (winners & numbers).count

  if mantches > 0
    2**(mantches - 1)
  else
    0
  end
}
.tap { puts _1}