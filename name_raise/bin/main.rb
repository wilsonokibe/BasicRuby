require_relative '../lib/name.rb'

begin
  puts "Enter firstname"
  firstname = gets.chomp

  puts "Enter lastname"
  lastname = gets.chomp

  name = Name.new(firstname, lastname)
  puts "Your name is: #{name.names}"
rescue NameException => detail
  puts "#{detail.message}"
end 
