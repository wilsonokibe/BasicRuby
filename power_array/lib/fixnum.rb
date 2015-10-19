class Fixnum
  def power
    [1, 2, 3, 4, 5, 6].collect {|i| i**self}
  end
end