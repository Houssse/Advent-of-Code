input = File.read('input.txt').split.map(&:to_i)

a = Array.new

b = 0

input.each do |x|
  b += x
  a << b

end