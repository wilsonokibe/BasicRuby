require_relative "../lib/fixnum.rb"

puts "Specify a number and I will calculate it's factorial"
number = Integer(gets.chomp)

p number.calculate_factorial
