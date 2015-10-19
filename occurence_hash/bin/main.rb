require_relative "../lib/string.rb"

puts "Enter something and i'll tell you how many times each item occured: "
input = gets.chomp

occurence = input.unify_case

puts "You have entered '#{input}' and each letter occured as follows: \n #{occurence}"
