class Array
  def fibonacci
    until self[-1] + self[-2] >= 1000
      yield
    end
  end
end
