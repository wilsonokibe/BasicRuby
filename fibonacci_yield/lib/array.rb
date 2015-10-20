class Array
  def fibonacci
    until self[-1] >= 1000
      yield 
    end
  end
end
