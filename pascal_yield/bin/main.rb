require_relative '../lib/pascal_triangle.rb'

puts "Enter level and I will produce pascal triangle up to that level"
level_number = Integer(gets.chomp)

pascal = PascalTriangle.new
puts "" 
pascal.pascal_triangle(level_number) { |value| puts "#{value}"}
