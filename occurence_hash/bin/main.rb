require_relative "../lib/String.rb"

puts "Enter something and i'll tell you how many times each item occured: "
input = gets.chomp

occurence = input.remove_spaces

puts "You have entered '#{input}' and each input occured as follows: \n #{occurence}"
