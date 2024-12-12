# frozen_string_literal: true

# Part 1
input = File.read('input.txt').split("\n").map { |row| row.split.map(&:to_i) }.transpose

left_column = input[0]
right_column = input[1]

p left_column.sort.zip(right_column.sort).map { |a, b| (a - b).abs }.sum

# Part 2
p left_column.map { |i| [i, right_column.count(i)] }.map { |arr| arr.inject(&:*) }.sum
