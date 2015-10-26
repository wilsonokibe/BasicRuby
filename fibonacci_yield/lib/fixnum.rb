class Fixnum
  def fibonacci  
    fib = [0, 1]  
    until fib[-1] + fib[-2] >= self
      fib.push(fib[-2] + fib[-1])
    end
    yield fib
  end
end
