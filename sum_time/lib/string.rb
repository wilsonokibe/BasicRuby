class String
  def sum_time(time)
    t1 = /(\d\d):(\d\d):(\d\d)/.match(self)
    t2 = /(\d\d):(\d\d):(\d\d)/.match(time)

    sec = Integer(t1[3]) + Integer(t2[3])
    min = Integer(t1[2]) + Integer(t2[2])
    hr  = Integer(t1[1]) + Integer(t2[1])
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

    if day > 0
      "#{day} day & #{hr} hours : #{min} minutes : #{sec} seconds"
    else
      "#{hr} hours : #{min} minutes : #{sec} seconds"
    end
  end
end
