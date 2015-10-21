require_relative '../lib/name.rb'

begin
  puts "Enter firstname"
  firstname = gets.chomp

  puts "Enter lastname"
  lastname = gets.chomp

  name = Name.new(firstname, lastname)
  puts "Your name is: " + name.names
rescue RetryException => detail
  # retry if detail.ok_to_retry
  # raise
  puts "#{detail.message}"
end 
