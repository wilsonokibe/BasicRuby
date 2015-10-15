require_relative "../lib/bike.rb"

new_bike = Bike.new("Kawasaki Ninja", 10000, "DealDey.com")

new_bike.show_vehicle

puts "\nEnter 1. Change price\n2. Quite"
command = Integer(gets.chop)

if command == 1 then
  puts "Enter new price"
  price = Float(gets.chop)

  new_bike.new_price(price)

  new_bike.show_vehicle
else
  abort("Exiting...")
end