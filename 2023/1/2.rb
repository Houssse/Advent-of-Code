input = File.read('input.txt').split

@interege = []

input.each do |i|
  x = i.scan(/(?=(\d|one|two|three|four|five|six|seven|eight|nine|))/)

  x = x.delete_if{|n| n.include?('')}.flatten

  line = x.join(" ")
 
  @interege  << line.gsub('one', '1')
  .gsub('two', '2')
  .gsub('three', '3')
  .gsub('four', '4')
  .gsub('five', '5')
  .gsub('six', '6')
  .gsub('seven', '7')
  .gsub('eight', '8')
  .gsub('nine', '9')
 
end

@final = 0

@interege.each do |i|

  arr = i.split

  sum = arr.first + arr.last
  @final = @final + sum.to_i
end
 
p @final