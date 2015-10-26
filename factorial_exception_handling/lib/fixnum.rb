class Fixnum
  def calculate_factorial
    begin
      raise "Invalid input for factorial"  if self < 0        
      (2..self).inject(1) { |a, b| a * b }
    rescue Exception
      STDERR.puts "Invalid input error: #{$!}"
    end
  end
end
