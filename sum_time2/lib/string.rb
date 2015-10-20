class String
  def sum_time(*time_splat)

    pattern = /([0-2]?[0-3]|[0-1]?[0-9]):([0-5]?[0-9]):([0-5]?[0-9])/

    match1 = pattern.match(self)

    if match1 
      sec = Integer(match1[3])
      min = Integer(match1[2])
      hr  = Integer(match1[1])
      day = 0

      time_splat.each do |time|
        match2 = pattern.match(time)

        if match2
          sec += Integer(match2[3])
          min += Integer(match2[2])
          hr  += Integer(match2[1])
        else
          return "#{time} is not valid."
        end
      end

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

      if day > 0
        "#{day} days, #{hr} hr : #{min} min : #{sec} sec"
      else
        "#{hr} hr : #{min} min : #{sec} sec"
      end
    else
      return "#{self} is not valid."
    end
  end
end
