require_relative "../lib/string.rb"

time1 = "23:23:52"
time2 = "02:48:16"

time = String.new
all_time = time.sum_digits(time1, time2)

puts "\nsum of both time: #{all_time}\n\n"
