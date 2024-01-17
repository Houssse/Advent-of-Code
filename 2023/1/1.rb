input = File.read('input.txt').split

@final = []

input.each do |i|

  x = i.split(//)
  
  interger = x.delete_if {|x| x >= "a" }

  sum = interger.first + interger.last
  
  @final << sum.to_i
end

p @final.sum
