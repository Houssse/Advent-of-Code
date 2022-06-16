input = File.read('input.txt').split.map(&:to_i)

fuel = 0

input.each do |mass|
  fuel += mass / 3 - 2
end

puts fuel
