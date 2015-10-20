require_relative "../lib/string.rb"

puts "Enter sentence. In this sentence i will search for any word you specify."
sentence = gets.chomp

puts "Enter a search word"
search_word = gets.chomp

match_count, highlighted_sentence = sentence.highlight_match(search_word)

puts "The match result is: \n#{highlighted_sentence}"
puts "There were #{match_count} matches"
