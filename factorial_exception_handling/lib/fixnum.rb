class Fixnum
  def calculate_factorial
    begin
      if self < 0
        raise "Invalid input for factorial" 
      else
        return (2..self).inject(1) { |a, b| a * b }
      end
    rescue Exception
      STDERR.puts "Invalid input error: #{$!}"
    end
  end
end
