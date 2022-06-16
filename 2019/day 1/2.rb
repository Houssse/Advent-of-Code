input = File.read('input.txt').split.map(&:to_i)

fuel = 0

input.each do |mass|
  fuel += mass
  while mass > 0
    mass = mass / 3 - 2
    fuel += mass
  end
end

puts fuel