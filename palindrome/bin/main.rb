require_relative "../lib/string.rb"

message = "Input something and I'll tell you if it is palindrome or not: (enter q to quite)"

puts message
string = gets.chomp 

until string.match(/^q$/i) 
  string.palindrome
  puts message  
  string = gets.chomp 
end 
