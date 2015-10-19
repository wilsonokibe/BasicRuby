require_relative "../lib/string.rb"

puts "Enter sentence. In this sentence i will search for any word you specify."
sentence = gets.chomp

puts "Enter a search word"
search_word = gets.chomp

a, b = sentence.highlight_match(search_word)

puts "The match result is: \n#{b}"
puts "There were #{a} matches"
