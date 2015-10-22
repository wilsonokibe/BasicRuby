class Fixnum
  def factorial
    factorial = 1
    if self >= 2
      factorial = (2..self).inject(1) { |value1, value2| value1 * value2 }
    end
    factorial
  end
end