require_relative "../lib/string.rb"

puts "Enter anything and I will tell you how many lowercase, uppercase, digit and special characters in your input"
input = gets.chomp

p input.number_of_various_char_type
