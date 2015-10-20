require_relative "../lib/interest.rb"

puts "Enter principal amount"
principal = gets.chomp.to_f

puts "Enter time (years)"
time = gets.chomp.to_f

interest = Interest.new do |f|
  f.principal = principal
  f.time      = time
end

difference = interest.interests_difference

puts "\nDifference in compound and simple interest is %.2f." % difference
puts "\n"