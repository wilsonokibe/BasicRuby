require_relative "../lib/fixnum.rb"

puts "Enter any value to be used as power in our calculation:"
value = Integer(gets.chomp)

puts value.power
