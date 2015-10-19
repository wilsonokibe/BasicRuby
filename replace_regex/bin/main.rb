require_relative '../lib/string.rb'

puts "Enter input. I will replace all vowels with '*': "
string = gets.chomp

new_string = string.replace_vowel

puts "I have changed '#{string}' to \n '#{new_string}'"
