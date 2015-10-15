require_relative "../lib/string.rb"

puts "Input something and I'll tell you if it is palindrome or not: "
string = gets.chomp 

while !string.match(/^q$/i) 
  string.result 
  puts "Input something and I'll tell you if it is palindrome or not: "  
  string = gets.chomp 
end 
