require_relative "../lib/fixnum.rb"

puts "Specify a number and i will produce all prime numbers from 1 to your specified number"
number = Integer(gets.chomp)

p number.prime_numbers
