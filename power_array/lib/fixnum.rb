class Fixnum
  def power(num)
    collect { |i| i**num }
  end
end