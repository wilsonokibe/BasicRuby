class String

  TIME_PATTERN = /^([0-2][0-3]|[0-1][0-9]):([0-5][0-9]):([0-5][0-9])/

  def sum_digits(time1, time2)

    timer1 = TIME_PATTERN.match(time1)
    timer2 = TIME_PATTERN.match(time2)

    sec = Integer(timer1[3]) + Integer(timer2[3])
    min = Integer(timer1[2]) + Integer(timer2[2])
    hr  = Integer(timer1[1]) + Integer(timer2[1])

    change_to_time_format(hr, min, sec)    
  end

  def change_to_time_format(hr, min, sec)
    day = 0

    if sec >= 60 
      sec = sec - 60
      min += 1
    end

    if min >= 60
      min = min - 60
      hr += 1
    end

    if hr >= 24
      hr = hr - 24
      day += 1
    end

    return_time(day, hr, min, sec)
  end

  def return_time(day, hr, min, sec)
    if day > 0
      "#{day} day & #{hr} hours : #{min} minutes : #{sec} seconds"
    else
      "#{hr} hours : #{min} minutes : #{sec} seconds"
    end
  end
end
