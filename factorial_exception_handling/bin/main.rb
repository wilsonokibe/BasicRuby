require_relative "../lib/fixnum.rb"

begin
  puts "Specify a number and I will calculate it's factorial"
  number = Integer(gets.chomp)
  if number < 0
    puts "Invalid input for factorial"
  else
    p number.calculate_factorial
  end
rescue Exception
  STDERR.puts "Invalid input error: #{$!}"
end
