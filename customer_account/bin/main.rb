require_relative "../lib/customer.rb"

account_no = 1234500
puts "Select Operation:\n1. New Account\n2. Quite"
input = gets.chomp

abort("Goodbye...") if input.match(/^2$/)

if input == "1" then
  puts "\nCreating New Account\nEnter name"
  name = gets.chomp
  new_customer = Customer.new(name, account_no += 1)
  puts "\nAccount created\nDetail:\naccount number: -- #{account_no}\naccount name: -- #{name}\n"
end

puts "\nSelect transaction:\n1. Withdrawal\n2. Deposit\n3. Account Detail\n4. Quite"
transaction = Integer(gets.chop)

case Integer(transaction)
when 1
  puts "Enter withdrawal amount:"
  amount = gets.chop
  if amount.to_f < 0
    puts "You cannot make negative transaction"
  else
    new_customer.withdraw(amount.to_f)
    new_customer.balance
  end
when 2
  puts "Enter deposit amount:"
  amount = gets.chop
  if amount.to_f < 0
    puts "You cannot make negative transaction"
  else
    new_customer.deposit(amount.to_f)
    new_customer.balance
  end
when 4 
  abort("Goodbye...")         
end
