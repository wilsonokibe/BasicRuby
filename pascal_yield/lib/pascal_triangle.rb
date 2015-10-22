require_relative '../lib/factorial.rb'

class PascalTriangle
  def pascal_triangle(number)
    for max in 0..number
      triangle = []
      for b in 0..max
        triangle << "%-2s" % (max.factorial / (b.factorial * (max - b).factorial))
      end
      yield "#{' ' * (number-max)}#{triangle.join(' ') }"
    end
  end
end
