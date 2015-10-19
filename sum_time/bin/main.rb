require_relative "../lib/string.rb"

time1 = "23:23:52"
time2 = "02:48:16"

a = time1.sum_time(time2)

puts "sum of both time: #{a}"
