require_relative "../lib/power.rb"

puts "Enter any value to be used as power in our calculation:"
value = Integer(gets.chomp)

result = Power.new

puts result.power(value)