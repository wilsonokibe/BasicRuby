require_relative '../lib/array.rb'

puts "This exercise displays fibonacci sequence to 1000 using ruby yield"

fib = [0,1]

fib.fibonacci { fib.push(fib[-2] + fib[-1]) }
puts fib
