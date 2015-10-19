class Fixnum
  def calculate_factorial
    (2..self).inject(1) { |a, b| a * b }
  end
end
