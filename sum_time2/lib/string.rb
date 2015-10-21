class String
  TIME_PATTERN = /^([0-2][0-3]|[0-1][0-9]):([0-5][0-9]):([0-5][0-9])/

  def sum_time(*time_splat)
    sec = min = hr = day = 0

    time_splat.each do |time|
      match = TIME_PATTERN.match(time)

      if match
        sec += Integer(match[3])
        min += Integer(match[2])
        hr  += Integer(match[1])
      else
        return "#{time} is not valid."
      end
    end
    change_to_time_format(hr, min, sec)
  end

  def change_to_time_format(hr, min, sec)
    day = 0    
    if sec >=60
      min += sec / 60
      sec = sec % 60
    end

    if min >= 60
      hr += min / 60
      min = min % 60
    end

    if hr >= 24
      day += hr / 24
      hr   = hr % 24
    end 
    return_time(day, hr, min, sec)
  end

  def return_time(day, hr, min, sec)
    if day > 0
      "#{day} days, #{hr} hr : #{min} min : #{sec} sec"
    else
      "#{hr} hr : #{min} min : #{sec} sec"
    end
  end
end
