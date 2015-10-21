class Fixnum
  def calculate_factorial
    if self < 0
      puts "Invalid input for factorial"
    else
      return (2..self).inject(1) { |a, b| a * b }
    end
  end
end
