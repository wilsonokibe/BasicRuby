require_relative '../lib/fixnum.rb'

puts "This exercise displays fibonacci sequence to 1000 using ruby yield"

fib = gets.chomp.to_i

fib.fibonacci { |x| puts x }
