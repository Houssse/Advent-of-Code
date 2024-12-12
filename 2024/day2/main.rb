# frozen_string_literal: true

# Part 1
input = File.read('input.txt').split("\n").map { |row| row.split.map(&:to_i) }

result = 0

input.each do |arr|
  next unless arr.each_cons(2).all? { |a, b| a < b } || arr.each_cons(2).all? { |a, b| a > b }

  result += 1 if arr.each_cons(2).all? { |a, b| (b - a).abs.between?(1, 3) }
end

puts result

# Part 2

def safe?(arr)
  increasing = arr.each_cons(2).all? { |a, b| a < b && (b - a).between?(1, 3) }
  decreasing = arr.each_cons(2).all? { |a, b| a > b && (a - b).between?(1, 3) }
  increasing || decreasing
end

def can_be_safe?(arr)
  arr.each_with_index.any? do |_, idx|
    safe?(arr[0...idx] + arr[(idx + 1)..])
  end
end

def count_safe_reports(reports)
  reports.count do |report|
    safe?(report) || can_be_safe?(report)
  end
end

puts count_safe_reports(input)
