require_relative "../lib/array.rb"

puts "Enter any value to be used as power in our calculation:"
value = Integer(gets.chomp)

puts [1, 2, 3, 4, 5, 6].power(value)
