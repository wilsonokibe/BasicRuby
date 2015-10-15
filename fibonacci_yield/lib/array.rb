class Array
  def fibonacci
    yield while self[-1] <= 1000
  end
end
