require_relative "../lib/string.rb"

time1 = "23:23:52"
time2 = "02:48:16"
time3 = "02:48:16"
time4 = "02:48:16"
time5 = "02:48:16"
time6 = "02:58:16"

all_time = time1.sum_time(time2, time3, time4, time5, time6)

puts "\n#{all_time}\n\n"
