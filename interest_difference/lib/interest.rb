class Interest
  attr_writer :principal, :time
  @@rate = 10.0

  def initialize
    if block_given? 
      yield self 
      if @principal <= 0
        raise "#{@principal} is invalid principal."
      elsif @time <= 0
        raise "#{time} is an invalid time."
      end          
    else
      raise "No block given!"
    end
  end

  def simple_interest
    interest_simple =  @principal * @time * (@@rate / 100) 
  end

  def compound_interest
    interest_compound =  @principal * (((1 + (@@rate / 100)) ** @time) - 1)
  end

  def interests_difference
    compound_interest - simple_interest
  end
end